.class public final Landroid/ranging/wifi/rtt/RttRangingCapabilities;
.super Ljava/lang/Object;
.source "RttRangingCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/ranging/RangingCapabilities$TechnologyCapabilities;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/ranging/wifi/rtt/RttRangingCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHasPeriodicRangingHardwareFeature:Z

.field private final blacklist mMaxSupportedBandwidth:I

.field private final blacklist mMaxSupportedRxChain:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Landroid/ranging/wifi/rtt/RttRangingCapabilities$1;

    invoke-direct {v0}, Landroid/ranging/wifi/rtt/RttRangingCapabilities$1;-><init>()V

    sput-object v0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mHasPeriodicRangingHardwareFeature:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mMaxSupportedBandwidth:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mMaxSupportedRxChain:I

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/ranging/wifi/rtt/RttRangingCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/wifi/rtt/RttRangingCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;->-$$Nest$fgetmHasPeriodicRangingHardwareFeature(Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mHasPeriodicRangingHardwareFeature:Z

    .line 46
    invoke-static {p1}, Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;->-$$Nest$fgetmMaxSupportedBandwidth(Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mMaxSupportedBandwidth:I

    .line 47
    invoke-static {p1}, Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;->-$$Nest$fgetmMaxSupportedRxChain(Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;)I

    move-result v0

    iput v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mMaxSupportedRxChain:I

    .line 48
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;Landroid/ranging/wifi/rtt/RttRangingCapabilities-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/ranging/wifi/rtt/RttRangingCapabilities;-><init>(Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMaxSupportedBandwidth()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mMaxSupportedBandwidth:I

    return v0
.end method

.method public blacklist getMaxSupportedRxChain()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mMaxSupportedRxChain:I

    return v0
.end method

.method public blacklist getTechnology()I
    .registers 2

    .line 87
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist hasPeriodicRangingHardwareFeature()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mHasPeriodicRangingHardwareFeature:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RttRangingCapabilities{ mHasPeriodicRangingHwFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mHasPeriodicRangingHardwareFeature:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

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

    .line 58
    iget-boolean v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mHasPeriodicRangingHardwareFeature:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 59
    iget v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mMaxSupportedBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;->mMaxSupportedRxChain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    return-void
.end method
