.class public Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
.super Ljava/lang/Object;
.source "UwbRangingCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ranging/uwb/UwbRangingCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCountryCode:Ljava/lang/String;

.field private blacklist mHasBackgroundRangingSupport:Z

.field private blacklist mMinRangingInterval:Ljava/time/Duration;

.field private blacklist mSupportedChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportedConfigIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportedNtfConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportedPreambleIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportedRangingUpdateRates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportedSlotDurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSupportsAzimuthalAngle:Z

.field private blacklist mSupportsDistance:Z

.field private blacklist mSupportsElevationAngle:Z

.field private blacklist mSupportsRangingIntervalReconfigure:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCountryCode(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mCountryCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasBackgroundRangingSupport(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mHasBackgroundRangingSupport:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinRangingInterval(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/time/Duration;
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mMinRangingInterval:Ljava/time/Duration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedChannels(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportedChannels:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedConfigIds(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportedConfigIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedNtfConfigs(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportedNtfConfigs:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedPreambleIndexes(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportedPreambleIndexes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedRangingUpdateRates(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportedRangingUpdateRates:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedSlotDurations(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportedSlotDurations:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportsAzimuthalAngle(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportsAzimuthalAngle:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportsDistance(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportsDistance:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportsElevationAngle(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportsElevationAngle:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportsRangingIntervalReconfigure(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportsRangingIntervalReconfigure:Z

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/ranging/uwb/UwbRangingCapabilities;
    .registers 3

    .line 470
    new-instance v0, Landroid/ranging/uwb/UwbRangingCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/ranging/uwb/UwbRangingCapabilities;-><init>(Landroid/ranging/uwb/UwbRangingCapabilities$Builder;Landroid/ranging/uwb/UwbRangingCapabilities-IA;)V

    return-object v0
.end method

.method public blacklist setCountryCode(Ljava/lang/String;)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .param p1, "countryCode"    # Ljava/lang/String;

    .line 459
    iput-object p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mCountryCode:Ljava/lang/String;

    .line 460
    return-object p0
.end method

.method public blacklist setHasBackgroundRangingSupport(Z)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .param p1, "hasBackgroundRangingSupport"    # Z

    .line 449
    iput-boolean p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mHasBackgroundRangingSupport:Z

    .line 450
    return-object p0
.end method

.method public blacklist setMinRangingInterval(Ljava/time/Duration;)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .param p1, "minRangingInterval"    # Ljava/time/Duration;

    .line 358
    iput-object p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mMinRangingInterval:Ljava/time/Duration;

    .line 359
    return-object p0
.end method

.method public blacklist setSupportedChannels(Ljava/util/List;)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/ranging/uwb/UwbRangingCapabilities$Builder;"
        }
    .end annotation

    .line 371
    .local p1, "supportedChannels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportedChannels:Ljava/util/List;

    .line 372
    return-object p0
.end method

.method public blacklist setSupportedConfigIds(Ljava/util/List;)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/ranging/uwb/UwbRangingCapabilities$Builder;"
        }
    .end annotation

    .line 410
    .local p1, "supportedConfigIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportedConfigIds:Ljava/util/List;

    .line 411
    return-object p0
.end method

.method public blacklist setSupportedNtfConfigs(Ljava/util/List;)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/ranging/uwb/UwbRangingCapabilities$Builder;"
        }
    .end annotation

    .line 397
    .local p1, "supportedNtfConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportedNtfConfigs:Ljava/util/List;

    .line 398
    return-object p0
.end method

.method public blacklist setSupportedPreambleIndexes(Ljava/util/List;)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/ranging/uwb/UwbRangingCapabilities$Builder;"
        }
    .end annotation

    .line 384
    .local p1, "supportedPreambleIndexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportedPreambleIndexes:Ljava/util/List;

    .line 385
    return-object p0
.end method

.method public blacklist setSupportedRangingUpdateRates(Ljava/util/List;)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/ranging/uwb/UwbRangingCapabilities$Builder;"
        }
    .end annotation

    .line 437
    .local p1, "supportedRangingUpdateRates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportedRangingUpdateRates:Ljava/util/List;

    .line 438
    return-object p0
.end method

.method public blacklist setSupportedSlotDurations(Ljava/util/List;)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/ranging/uwb/UwbRangingCapabilities$Builder;"
        }
    .end annotation

    .line 423
    .local p1, "supportedSlotDurations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportedSlotDurations:Ljava/util/List;

    .line 424
    return-object p0
.end method

.method public blacklist setSupportsAzimuthalAngle(Z)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .param p1, "supportsAzimuthalAngle"    # Z

    .line 321
    iput-boolean p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportsAzimuthalAngle:Z

    .line 322
    return-object p0
.end method

.method public blacklist setSupportsDistance(Z)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .param p1, "supportsDistance"    # Z

    .line 309
    iput-boolean p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportsDistance:Z

    .line 310
    return-object p0
.end method

.method public blacklist setSupportsElevationAngle(Z)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .param p1, "supportsElevationAngle"    # Z

    .line 333
    iput-boolean p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportsElevationAngle:Z

    .line 334
    return-object p0
.end method

.method public blacklist setSupportsRangingIntervalReconfigure(Z)Landroid/ranging/uwb/UwbRangingCapabilities$Builder;
    .registers 2
    .param p1, "supportsRangingIntervalReconfigure"    # Z

    .line 346
    iput-boolean p1, p0, Landroid/ranging/uwb/UwbRangingCapabilities$Builder;->mSupportsRangingIntervalReconfigure:Z

    .line 347
    return-object p0
.end method
