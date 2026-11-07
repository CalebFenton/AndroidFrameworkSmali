.class public final Landroid/location/GpsAssistance$Builder;
.super Ljava/lang/Object;
.source "GpsAssistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GpsAssistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlmanac:Landroid/location/GnssAlmanac;

.field private blacklist mAuxiliaryInformation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/AuxiliaryInformation;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIonosphericModel:Landroid/location/KlobucharIonosphericModel;

.field private blacklist mLeapSecondsModel:Landroid/location/LeapSecondsModel;

.field private blacklist mRealTimeIntegrityModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/RealTimeIntegrityModel;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatelliteCorrections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssAssistance$GnssSatelliteCorrections;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSatelliteEphemeris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GpsSatelliteEphemeris;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTimeModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/TimeModel;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUtcModel:Landroid/location/UtcModel;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlmanac(Landroid/location/GpsAssistance$Builder;)Landroid/location/GnssAlmanac;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsAssistance$Builder;->mAlmanac:Landroid/location/GnssAlmanac;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuxiliaryInformation(Landroid/location/GpsAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsAssistance$Builder;->mAuxiliaryInformation:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIonosphericModel(Landroid/location/GpsAssistance$Builder;)Landroid/location/KlobucharIonosphericModel;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsAssistance$Builder;->mIonosphericModel:Landroid/location/KlobucharIonosphericModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeapSecondsModel(Landroid/location/GpsAssistance$Builder;)Landroid/location/LeapSecondsModel;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsAssistance$Builder;->mLeapSecondsModel:Landroid/location/LeapSecondsModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRealTimeIntegrityModels(Landroid/location/GpsAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsAssistance$Builder;->mRealTimeIntegrityModels:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteCorrections(Landroid/location/GpsAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsAssistance$Builder;->mSatelliteCorrections:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEphemeris(Landroid/location/GpsAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsAssistance$Builder;->mSatelliteEphemeris:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeModels(Landroid/location/GpsAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsAssistance$Builder;->mTimeModels:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUtcModel(Landroid/location/GpsAssistance$Builder;)Landroid/location/UtcModel;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsAssistance$Builder;->mUtcModel:Landroid/location/UtcModel;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GpsAssistance;
    .registers 3

    .line 306
    new-instance v0, Landroid/location/GpsAssistance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GpsAssistance;-><init>(Landroid/location/GpsAssistance$Builder;Landroid/location/GpsAssistance-IA;)V

    return-object v0
.end method

.method public blacklist setAlmanac(Landroid/location/GnssAlmanac;)Landroid/location/GpsAssistance$Builder;
    .registers 2
    .param p1, "almanac"    # Landroid/location/GnssAlmanac;

    .line 239
    iput-object p1, p0, Landroid/location/GpsAssistance$Builder;->mAlmanac:Landroid/location/GnssAlmanac;

    .line 240
    return-object p0
.end method

.method public blacklist setAuxiliaryInformation(Ljava/util/List;)Landroid/location/GpsAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/AuxiliaryInformation;",
            ">;)",
            "Landroid/location/GpsAssistance$Builder;"
        }
    .end annotation

    .line 268
    .local p1, "auxiliaryInformation":Ljava/util/List;, "Ljava/util/List<Landroid/location/AuxiliaryInformation;>;"
    iput-object p1, p0, Landroid/location/GpsAssistance$Builder;->mAuxiliaryInformation:Ljava/util/List;

    .line 269
    return-object p0
.end method

.method public blacklist setIonosphericModel(Landroid/location/KlobucharIonosphericModel;)Landroid/location/GpsAssistance$Builder;
    .registers 2
    .param p1, "ionosphericModel"    # Landroid/location/KlobucharIonosphericModel;

    .line 246
    iput-object p1, p0, Landroid/location/GpsAssistance$Builder;->mIonosphericModel:Landroid/location/KlobucharIonosphericModel;

    .line 247
    return-object p0
.end method

.method public blacklist setLeapSecondsModel(Landroid/location/LeapSecondsModel;)Landroid/location/GpsAssistance$Builder;
    .registers 2
    .param p1, "leapSecondsModel"    # Landroid/location/LeapSecondsModel;

    .line 260
    iput-object p1, p0, Landroid/location/GpsAssistance$Builder;->mLeapSecondsModel:Landroid/location/LeapSecondsModel;

    .line 261
    return-object p0
.end method

.method public blacklist setRealTimeIntegrityModels(Ljava/util/List;)Landroid/location/GpsAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/RealTimeIntegrityModel;",
            ">;)",
            "Landroid/location/GpsAssistance$Builder;"
        }
    .end annotation

    .line 291
    .local p1, "realTimeIntegrityModels":Ljava/util/List;, "Ljava/util/List<Landroid/location/RealTimeIntegrityModel;>;"
    iput-object p1, p0, Landroid/location/GpsAssistance$Builder;->mRealTimeIntegrityModels:Ljava/util/List;

    .line 292
    return-object p0
.end method

.method public blacklist setSatelliteCorrections(Ljava/util/List;)Landroid/location/GpsAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAssistance$GnssSatelliteCorrections;",
            ">;)",
            "Landroid/location/GpsAssistance$Builder;"
        }
    .end annotation

    .line 299
    .local p1, "satelliteCorrections":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAssistance$GnssSatelliteCorrections;>;"
    iput-object p1, p0, Landroid/location/GpsAssistance$Builder;->mSatelliteCorrections:Ljava/util/List;

    .line 300
    return-object p0
.end method

.method public blacklist setSatelliteEphemeris(Ljava/util/List;)Landroid/location/GpsAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GpsSatelliteEphemeris;",
            ">;)",
            "Landroid/location/GpsAssistance$Builder;"
        }
    .end annotation

    .line 283
    .local p1, "satelliteEphemeris":Ljava/util/List;, "Ljava/util/List<Landroid/location/GpsSatelliteEphemeris;>;"
    iput-object p1, p0, Landroid/location/GpsAssistance$Builder;->mSatelliteEphemeris:Ljava/util/List;

    .line 284
    return-object p0
.end method

.method public blacklist setTimeModels(Ljava/util/List;)Landroid/location/GpsAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/TimeModel;",
            ">;)",
            "Landroid/location/GpsAssistance$Builder;"
        }
    .end annotation

    .line 275
    .local p1, "timeModels":Ljava/util/List;, "Ljava/util/List<Landroid/location/TimeModel;>;"
    iput-object p1, p0, Landroid/location/GpsAssistance$Builder;->mTimeModels:Ljava/util/List;

    .line 276
    return-object p0
.end method

.method public blacklist setUtcModel(Landroid/location/UtcModel;)Landroid/location/GpsAssistance$Builder;
    .registers 2
    .param p1, "utcModel"    # Landroid/location/UtcModel;

    .line 253
    iput-object p1, p0, Landroid/location/GpsAssistance$Builder;->mUtcModel:Landroid/location/UtcModel;

    .line 254
    return-object p0
.end method
