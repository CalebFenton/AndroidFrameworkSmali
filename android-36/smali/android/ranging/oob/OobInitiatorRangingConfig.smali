.class public final Landroid/ranging/oob/OobInitiatorRangingConfig;
.super Landroid/ranging/RangingConfig;
.source "OobInitiatorRangingConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;,
        Landroid/ranging/oob/OobInitiatorRangingConfig$RangingMode;,
        Landroid/ranging/oob/OobInitiatorRangingConfig$SecurityLevel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/oob/OobInitiatorRangingConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RANGING_MODE_AUTO:I = 0x0

.field public static final whitelist RANGING_MODE_FUSED:I = 0x3

.field public static final whitelist RANGING_MODE_HIGH_ACCURACY:I = 0x1

.field public static final whitelist RANGING_MODE_HIGH_ACCURACY_PREFERRED:I = 0x2

.field public static final whitelist SECURITY_LEVEL_BASIC:I = 0x0

.field public static final whitelist SECURITY_LEVEL_SECURE:I = 0x1


# instance fields
.field private final blacklist mDeviceHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/ranging/oob/DeviceHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRangingIntervalRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRangingMode:I

.field private final blacklist mSecurityLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 147
    new-instance v0, Landroid/ranging/oob/OobInitiatorRangingConfig$1;

    invoke-direct {v0}, Landroid/ranging/oob/OobInitiatorRangingConfig$1;-><init>()V

    sput-object v0, Landroid/ranging/oob/OobInitiatorRangingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    invoke-direct {p0}, Landroid/ranging/RangingConfig;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/ranging/oob/OobInitiatorRangingConfig;->setRangingSessionType(I)V

    .line 122
    sget-object v0, Landroid/ranging/oob/DeviceHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mDeviceHandles:Ljava/util/List;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mSecurityLevel:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingMode:I

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    .line 126
    .local v0, "lower":Ljava/time/Duration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    .line 127
    .local v1, "upper":Ljava/time/Duration;
    new-instance v2, Landroid/util/Range;

    invoke-direct {v2, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v2, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingIntervalRange:Landroid/util/Range;

    .line 129
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/oob/OobInitiatorRangingConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/oob/OobInitiatorRangingConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;)V
    .registers 5
    .param p1, "builder"    # Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;

    .line 111
    invoke-direct {p0}, Landroid/ranging/RangingConfig;-><init>()V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/ranging/oob/OobInitiatorRangingConfig;->setRangingSessionType(I)V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->-$$Nest$fgetmDeviceHandles(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mDeviceHandles:Ljava/util/List;

    .line 114
    invoke-static {p1}, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->-$$Nest$fgetmSecurityLevel(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mSecurityLevel:I

    .line 115
    invoke-static {p1}, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->-$$Nest$fgetmRangingMode(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingMode:I

    .line 116
    new-instance v0, Landroid/util/Range;

    invoke-static {p1}, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->-$$Nest$fgetmFastestRangingInterval(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;)Ljava/time/Duration;

    move-result-object v1

    invoke-static {p1}, Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;->-$$Nest$fgetmSlowestRangingInterval(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;)Ljava/time/Duration;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingIntervalRange:Landroid/util/Range;

    .line 118
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;Landroid/ranging/oob/OobInitiatorRangingConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/oob/OobInitiatorRangingConfig;-><init>(Landroid/ranging/oob/OobInitiatorRangingConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeviceHandles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/ranging/oob/DeviceHandle;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mDeviceHandles:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getFastestRangingInterval()Ljava/time/Duration;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingIntervalRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist getRangingIntervalRange()Landroid/util/Range;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/time/Duration;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingIntervalRange:Landroid/util/Range;

    return-object v0
.end method

.method public whitelist getRangingMode()I
    .registers 2

    .line 226
    iget v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingMode:I

    return v0
.end method

.method public whitelist getSecurityLevel()I
    .registers 2

    .line 210
    iget v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mSecurityLevel:I

    return v0
.end method

.method public whitelist getSlowestRangingInterval()Ljava/time/Duration;
    .registers 2

    .line 197
    iget-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingIntervalRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OobInitiatorRangingConfig{ mDeviceHandles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mDeviceHandles:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangingIntervalRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingIntervalRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSecurityLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mSecurityLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRangingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 347
    invoke-super {p0}, Landroid/ranging/RangingConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 133
    invoke-virtual {p0}, Landroid/ranging/oob/OobInitiatorRangingConfig;->getRangingSessionType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mDeviceHandles:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 135
    iget v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mSecurityLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingIntervalRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    iget-object v0, p0, Landroid/ranging/oob/OobInitiatorRangingConfig;->mRangingIntervalRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/time/Duration;

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 139
    return-void
.end method
