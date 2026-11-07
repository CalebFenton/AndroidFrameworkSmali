.class public Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;
.super Ljava/lang/Object;
.source "RttRangingCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/wifi/rtt/RttRangingCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHasPeriodicRangingHardwareFeature:Z

.field private blacklist mMaxSupportedBandwidth:I

.field private blacklist mMaxSupportedRxChain:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasPeriodicRangingHardwareFeature(Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;->mHasPeriodicRangingHardwareFeature:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxSupportedBandwidth(Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;->mMaxSupportedBandwidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxSupportedRxChain(Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;)I
    .registers 1

    iget p0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;->mMaxSupportedRxChain:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;->mHasPeriodicRangingHardwareFeature:Z

    .line 120
    iput v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;->mMaxSupportedBandwidth:I

    .line 122
    iput v0, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;->mMaxSupportedRxChain:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/ranging/wifi/rtt/RttRangingCapabilities;
    .registers 3

    .line 157
    new-instance v0, Landroid/ranging/wifi/rtt/RttRangingCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/wifi/rtt/RttRangingCapabilities;-><init>(Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;Landroid/ranging/wifi/rtt/RttRangingCapabilities-IA;)V

    return-object v0
.end method

.method public blacklist setMaxSupportedBandwidth(I)Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;
    .registers 2
    .param p1, "maxSupportedBandwidth"    # I

    .line 126
    iput p1, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;->mMaxSupportedBandwidth:I

    .line 127
    return-object p0
.end method

.method public blacklist setMaxSupportedRxChain(I)Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;
    .registers 2
    .param p1, "maxSupportedRxChain"    # I

    .line 132
    iput p1, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;->mMaxSupportedRxChain:I

    .line 133
    return-object p0
.end method

.method public blacklist setPeriodicRangingHardwareFeature(Z)Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;
    .registers 2
    .param p1, "periodicRangingHwFeature"    # Z

    .line 145
    iput-boolean p1, p0, Landroid/ranging/wifi/rtt/RttRangingCapabilities$Builder;->mHasPeriodicRangingHardwareFeature:Z

    .line 146
    return-object p0
.end method
