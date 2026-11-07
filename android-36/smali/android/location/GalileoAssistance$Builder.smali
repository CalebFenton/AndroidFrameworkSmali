.class public final Landroid/location/GalileoAssistance$Builder;
.super Ljava/lang/Object;
.source "GalileoAssistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GalileoAssistance;
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

.field private blacklist mIonosphericModel:Landroid/location/GalileoIonosphericModel;

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
            "Landroid/location/GalileoSatelliteEphemeris;",
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
.method static bridge synthetic blacklist -$$Nest$fgetmAlmanac(Landroid/location/GalileoAssistance$Builder;)Landroid/location/GnssAlmanac;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoAssistance$Builder;->mAlmanac:Landroid/location/GnssAlmanac;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuxiliaryInformation(Landroid/location/GalileoAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoAssistance$Builder;->mAuxiliaryInformation:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIonosphericModel(Landroid/location/GalileoAssistance$Builder;)Landroid/location/GalileoIonosphericModel;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoAssistance$Builder;->mIonosphericModel:Landroid/location/GalileoIonosphericModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeapSecondsModel(Landroid/location/GalileoAssistance$Builder;)Landroid/location/LeapSecondsModel;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoAssistance$Builder;->mLeapSecondsModel:Landroid/location/LeapSecondsModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRealTimeIntegrityModels(Landroid/location/GalileoAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoAssistance$Builder;->mRealTimeIntegrityModels:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteCorrections(Landroid/location/GalileoAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoAssistance$Builder;->mSatelliteCorrections:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEphemeris(Landroid/location/GalileoAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoAssistance$Builder;->mSatelliteEphemeris:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeModels(Landroid/location/GalileoAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoAssistance$Builder;->mTimeModels:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUtcModel(Landroid/location/GalileoAssistance$Builder;)Landroid/location/UtcModel;
    .registers 1

    iget-object p0, p0, Landroid/location/GalileoAssistance$Builder;->mUtcModel:Landroid/location/UtcModel;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GalileoAssistance;
    .registers 3

    .line 303
    new-instance v0, Landroid/location/GalileoAssistance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GalileoAssistance;-><init>(Landroid/location/GalileoAssistance$Builder;Landroid/location/GalileoAssistance-IA;)V

    return-object v0
.end method

.method public blacklist setAlmanac(Landroid/location/GnssAlmanac;)Landroid/location/GalileoAssistance$Builder;
    .registers 2
    .param p1, "almanac"    # Landroid/location/GnssAlmanac;

    .line 236
    iput-object p1, p0, Landroid/location/GalileoAssistance$Builder;->mAlmanac:Landroid/location/GnssAlmanac;

    .line 237
    return-object p0
.end method

.method public blacklist setAuxiliaryInformation(Ljava/util/List;)Landroid/location/GalileoAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/AuxiliaryInformation;",
            ">;)",
            "Landroid/location/GalileoAssistance$Builder;"
        }
    .end annotation

    .line 265
    .local p1, "auxiliaryInformation":Ljava/util/List;, "Ljava/util/List<Landroid/location/AuxiliaryInformation;>;"
    iput-object p1, p0, Landroid/location/GalileoAssistance$Builder;->mAuxiliaryInformation:Ljava/util/List;

    .line 266
    return-object p0
.end method

.method public blacklist setIonosphericModel(Landroid/location/GalileoIonosphericModel;)Landroid/location/GalileoAssistance$Builder;
    .registers 2
    .param p1, "ionosphericModel"    # Landroid/location/GalileoIonosphericModel;

    .line 243
    iput-object p1, p0, Landroid/location/GalileoAssistance$Builder;->mIonosphericModel:Landroid/location/GalileoIonosphericModel;

    .line 244
    return-object p0
.end method

.method public blacklist setLeapSecondsModel(Landroid/location/LeapSecondsModel;)Landroid/location/GalileoAssistance$Builder;
    .registers 2
    .param p1, "leapSecondsModel"    # Landroid/location/LeapSecondsModel;

    .line 257
    iput-object p1, p0, Landroid/location/GalileoAssistance$Builder;->mLeapSecondsModel:Landroid/location/LeapSecondsModel;

    .line 258
    return-object p0
.end method

.method public blacklist setRealTimeIntegrityModels(Ljava/util/List;)Landroid/location/GalileoAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/RealTimeIntegrityModel;",
            ">;)",
            "Landroid/location/GalileoAssistance$Builder;"
        }
    .end annotation

    .line 288
    .local p1, "realTimeIntegrityModels":Ljava/util/List;, "Ljava/util/List<Landroid/location/RealTimeIntegrityModel;>;"
    iput-object p1, p0, Landroid/location/GalileoAssistance$Builder;->mRealTimeIntegrityModels:Ljava/util/List;

    .line 289
    return-object p0
.end method

.method public blacklist setSatelliteCorrections(Ljava/util/List;)Landroid/location/GalileoAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAssistance$GnssSatelliteCorrections;",
            ">;)",
            "Landroid/location/GalileoAssistance$Builder;"
        }
    .end annotation

    .line 296
    .local p1, "satelliteCorrections":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAssistance$GnssSatelliteCorrections;>;"
    iput-object p1, p0, Landroid/location/GalileoAssistance$Builder;->mSatelliteCorrections:Ljava/util/List;

    .line 297
    return-object p0
.end method

.method public blacklist setSatelliteEphemeris(Ljava/util/List;)Landroid/location/GalileoAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GalileoSatelliteEphemeris;",
            ">;)",
            "Landroid/location/GalileoAssistance$Builder;"
        }
    .end annotation

    .line 280
    .local p1, "satelliteEphemeris":Ljava/util/List;, "Ljava/util/List<Landroid/location/GalileoSatelliteEphemeris;>;"
    iput-object p1, p0, Landroid/location/GalileoAssistance$Builder;->mSatelliteEphemeris:Ljava/util/List;

    .line 281
    return-object p0
.end method

.method public blacklist setTimeModels(Ljava/util/List;)Landroid/location/GalileoAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/TimeModel;",
            ">;)",
            "Landroid/location/GalileoAssistance$Builder;"
        }
    .end annotation

    .line 272
    .local p1, "timeModels":Ljava/util/List;, "Ljava/util/List<Landroid/location/TimeModel;>;"
    iput-object p1, p0, Landroid/location/GalileoAssistance$Builder;->mTimeModels:Ljava/util/List;

    .line 273
    return-object p0
.end method

.method public blacklist setUtcModel(Landroid/location/UtcModel;)Landroid/location/GalileoAssistance$Builder;
    .registers 2
    .param p1, "utcModel"    # Landroid/location/UtcModel;

    .line 250
    iput-object p1, p0, Landroid/location/GalileoAssistance$Builder;->mUtcModel:Landroid/location/UtcModel;

    .line 251
    return-object p0
.end method
