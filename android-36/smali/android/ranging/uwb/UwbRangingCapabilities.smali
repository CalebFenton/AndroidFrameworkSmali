.class public final Landroid/ranging/uwb/UwbRangingCapabilities;
.super Ljava/lang/Object;
.source "UwbRangingCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/ranging/RangingCapabilities$TechnologyCapabilities;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/uwb/UwbRangingCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCountryCode:Ljava/lang/String;

.field private final blacklist mHasBackgroundRangingSupport:Z

.field private final blacklist mMinRangingInterval:Ljava/time/Duration;

.field private final blacklist mSupportedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportedConfigIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportedNtfConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportedPreambleIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportedRangingUpdateRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportedSlotDurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportsAzimuthalAngle:Z

.field private final blacklist mSupportsDistance:Z

.field private final blacklist mSupportsElevationAngle:Z

.field private final blacklist mSupportsRangingIntervalReconfigure:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 101
    new-instance v0, Landroid/ranging/uwb/UwbRangingCapabilities$1;

    invoke-direct {v0}, Landroid/ranging/uwb/UwbRangingCapabilities$1;-><init>()V

    sput-object v0, Landroid/ranging/uwb/UwbRangingCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsDistance:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    iput-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsAzimuthalAngle:Z

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    move v0, v2

    :goto_24
    iput-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsElevationAngle:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    move v0, v2

    :goto_2f
    iput-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsRangingIntervalReconfigure:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mMinRangingInterval:Ljava/time/Duration;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedChannels:Ljava/util/List;

    .line 85
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedChannels:Ljava/util/List;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedNtfConfigs:Ljava/util/List;

    .line 87
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedNtfConfigs:Ljava/util/List;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedConfigIds:Ljava/util/List;

    .line 89
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedConfigIds:Ljava/util/List;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedSlotDurations:Ljava/util/List;

    .line 91
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedSlotDurations:Ljava/util/List;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedRangingUpdateRates:Ljava/util/List;

    .line 93
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedRangingUpdateRates:Ljava/util/List;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedPreambleIndexes:Ljava/util/List;

    .line 95
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedPreambleIndexes:Ljava/util/List;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_ba

    goto :goto_bb

    :cond_ba
    move v1, v2

    :goto_bb
    iput-boolean v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mHasBackgroundRangingSupport:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mCountryCode:Ljava/lang/String;

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/uwb/UwbRangingCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/uwb/UwbRangingCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/uwb/UwbRangingCapabilities$Builder;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmSupportsDistance(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsDistance:Z

    .line 64
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmSupportsAzimuthalAngle(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsAzimuthalAngle:Z

    .line 65
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmSupportsElevationAngle(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsElevationAngle:Z

    .line 66
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmSupportsRangingIntervalReconfigure(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsRangingIntervalReconfigure:Z

    .line 67
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmMinRangingInterval(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/time/Duration;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mMinRangingInterval:Ljava/time/Duration;

    .line 68
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmSupportedChannels(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedChannels:Ljava/util/List;

    .line 69
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmSupportedNtfConfigs(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedNtfConfigs:Ljava/util/List;

    .line 70
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmSupportedConfigIds(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedConfigIds:Ljava/util/List;

    .line 71
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmSupportedSlotDurations(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedSlotDurations:Ljava/util/List;

    .line 72
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmSupportedRangingUpdateRates(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedRangingUpdateRates:Ljava/util/List;

    .line 73
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmSupportedPreambleIndexes(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedPreambleIndexes:Ljava/util/List;

    .line 74
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmHasBackgroundRangingSupport(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mHasBackgroundRangingSupport:Z

    .line 75
    invoke-static {p1}, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->-$$Nest$fgetmCountryCode(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mCountryCode:Ljava/lang/String;

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;Landroid/ranging/uwb/UwbRangingCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/uwb/UwbRangingCapabilities;-><init>(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCountryCode()Ljava/lang/String;
    .registers 2

    .line 253
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMinimumRangingInterval()Ljava/time/Duration;
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mMinRangingInterval:Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getSupportedChannels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedChannels:Ljava/util/List;

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedConfigIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedConfigIds:Ljava/util/List;

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedNotificationConfigurations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedNtfConfigs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedPreambleIndexes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedPreambleIndexes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedRangingUpdateRates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedRangingUpdateRates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSupportedSlotDurations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedSlotDurations:Ljava/util/List;

    invoke-static {v0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTechnology()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isAzimuthalAngleSupported()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsAzimuthalAngle:Z

    return v0
.end method

.method public whitelist isBackgroundRangingSupported()Z
    .registers 2

    .line 243
    iget-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mHasBackgroundRangingSupport:Z

    return v0
.end method

.method public whitelist isDistanceMeasurementSupported()Z
    .registers 2

    .line 128
    iget-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsDistance:Z

    return v0
.end method

.method public whitelist isElevationAngleSupported()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsElevationAngle:Z

    return v0
.end method

.method public whitelist isRangingIntervalReconfigurationSupported()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsRangingIntervalReconfigure:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UwbRangingCapabilities{ mSupportsDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsDistance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportsAzimuthalAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsAzimuthalAngle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportsElevationAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsElevationAngle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportsRangingIntervalReconfigure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsRangingIntervalReconfigure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinRangingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mMinRangingInterval:Ljava/time/Duration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedChannels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedChannels:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedNtfConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedNtfConfigs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedConfigIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedConfigIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedSlotDurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedSlotDurations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedRangingUpdateRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedRangingUpdateRates:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedPreambleIndexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedPreambleIndexes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasBackgroundRangingSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mHasBackgroundRangingSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCountryCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 266
    iget-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsDistance:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 267
    iget-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsAzimuthalAngle:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 268
    iget-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsElevationAngle:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 269
    iget-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportsRangingIntervalReconfigure:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 270
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mMinRangingInterval:Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 271
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedChannels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 272
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedNtfConfigs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 273
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedConfigIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 274
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedSlotDurations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 275
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedRangingUpdateRates:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 276
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mSupportedPreambleIndexes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 277
    iget-boolean v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mHasBackgroundRangingSupport:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 278
    iget-object v0, p0, Landroid/ranging/uwb/UwbRangingCapabilities;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    return-void
.end method
