.class public final Landroid/location/QzssAssistance$Builder;
.super Ljava/lang/Object;
.source "QzssAssistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/QzssAssistance;
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
            "Landroid/location/QzssSatelliteEphemeris;",
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
.method static bridge synthetic blacklist -$$Nest$fgetmAlmanac(Landroid/location/QzssAssistance$Builder;)Landroid/location/GnssAlmanac;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssAssistance$Builder;->mAlmanac:Landroid/location/GnssAlmanac;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuxiliaryInformation(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssAssistance$Builder;->mAuxiliaryInformation:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIonosphericModel(Landroid/location/QzssAssistance$Builder;)Landroid/location/KlobucharIonosphericModel;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssAssistance$Builder;->mIonosphericModel:Landroid/location/KlobucharIonosphericModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeapSecondsModel(Landroid/location/QzssAssistance$Builder;)Landroid/location/LeapSecondsModel;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssAssistance$Builder;->mLeapSecondsModel:Landroid/location/LeapSecondsModel;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRealTimeIntegrityModels(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssAssistance$Builder;->mRealTimeIntegrityModels:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteCorrections(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssAssistance$Builder;->mSatelliteCorrections:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEphemeris(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssAssistance$Builder;->mSatelliteEphemeris:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeModels(Landroid/location/QzssAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssAssistance$Builder;->mTimeModels:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUtcModel(Landroid/location/QzssAssistance$Builder;)Landroid/location/UtcModel;
    .registers 1

    iget-object p0, p0, Landroid/location/QzssAssistance$Builder;->mUtcModel:Landroid/location/UtcModel;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/QzssAssistance;
    .registers 3

    .line 304
    new-instance v0, Landroid/location/QzssAssistance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/QzssAssistance;-><init>(Landroid/location/QzssAssistance$Builder;Landroid/location/QzssAssistance-IA;)V

    return-object v0
.end method

.method public blacklist setAlmanac(Landroid/location/GnssAlmanac;)Landroid/location/QzssAssistance$Builder;
    .registers 2
    .param p1, "almanac"    # Landroid/location/GnssAlmanac;

    .line 237
    iput-object p1, p0, Landroid/location/QzssAssistance$Builder;->mAlmanac:Landroid/location/GnssAlmanac;

    .line 238
    return-object p0
.end method

.method public blacklist setAuxiliaryInformation(Ljava/util/List;)Landroid/location/QzssAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/AuxiliaryInformation;",
            ">;)",
            "Landroid/location/QzssAssistance$Builder;"
        }
    .end annotation

    .line 266
    .local p1, "auxiliaryInformation":Ljava/util/List;, "Ljava/util/List<Landroid/location/AuxiliaryInformation;>;"
    iput-object p1, p0, Landroid/location/QzssAssistance$Builder;->mAuxiliaryInformation:Ljava/util/List;

    .line 267
    return-object p0
.end method

.method public blacklist setIonosphericModel(Landroid/location/KlobucharIonosphericModel;)Landroid/location/QzssAssistance$Builder;
    .registers 2
    .param p1, "ionosphericModel"    # Landroid/location/KlobucharIonosphericModel;

    .line 244
    iput-object p1, p0, Landroid/location/QzssAssistance$Builder;->mIonosphericModel:Landroid/location/KlobucharIonosphericModel;

    .line 245
    return-object p0
.end method

.method public blacklist setLeapSecondsModel(Landroid/location/LeapSecondsModel;)Landroid/location/QzssAssistance$Builder;
    .registers 2
    .param p1, "leapSecondsModel"    # Landroid/location/LeapSecondsModel;

    .line 258
    iput-object p1, p0, Landroid/location/QzssAssistance$Builder;->mLeapSecondsModel:Landroid/location/LeapSecondsModel;

    .line 259
    return-object p0
.end method

.method public blacklist setRealTimeIntegrityModels(Ljava/util/List;)Landroid/location/QzssAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/RealTimeIntegrityModel;",
            ">;)",
            "Landroid/location/QzssAssistance$Builder;"
        }
    .end annotation

    .line 289
    .local p1, "realTimeIntegrityModels":Ljava/util/List;, "Ljava/util/List<Landroid/location/RealTimeIntegrityModel;>;"
    iput-object p1, p0, Landroid/location/QzssAssistance$Builder;->mRealTimeIntegrityModels:Ljava/util/List;

    .line 290
    return-object p0
.end method

.method public blacklist setSatelliteCorrections(Ljava/util/List;)Landroid/location/QzssAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAssistance$GnssSatelliteCorrections;",
            ">;)",
            "Landroid/location/QzssAssistance$Builder;"
        }
    .end annotation

    .line 297
    .local p1, "satelliteCorrections":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAssistance$GnssSatelliteCorrections;>;"
    iput-object p1, p0, Landroid/location/QzssAssistance$Builder;->mSatelliteCorrections:Ljava/util/List;

    .line 298
    return-object p0
.end method

.method public blacklist setSatelliteEphemeris(Ljava/util/List;)Landroid/location/QzssAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/QzssSatelliteEphemeris;",
            ">;)",
            "Landroid/location/QzssAssistance$Builder;"
        }
    .end annotation

    .line 281
    .local p1, "satelliteEphemeris":Ljava/util/List;, "Ljava/util/List<Landroid/location/QzssSatelliteEphemeris;>;"
    iput-object p1, p0, Landroid/location/QzssAssistance$Builder;->mSatelliteEphemeris:Ljava/util/List;

    .line 282
    return-object p0
.end method

.method public blacklist setTimeModels(Ljava/util/List;)Landroid/location/QzssAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/TimeModel;",
            ">;)",
            "Landroid/location/QzssAssistance$Builder;"
        }
    .end annotation

    .line 273
    .local p1, "timeModels":Ljava/util/List;, "Ljava/util/List<Landroid/location/TimeModel;>;"
    iput-object p1, p0, Landroid/location/QzssAssistance$Builder;->mTimeModels:Ljava/util/List;

    .line 274
    return-object p0
.end method

.method public blacklist setUtcModel(Landroid/location/UtcModel;)Landroid/location/QzssAssistance$Builder;
    .registers 2
    .param p1, "utcModel"    # Landroid/location/UtcModel;

    .line 251
    iput-object p1, p0, Landroid/location/QzssAssistance$Builder;->mUtcModel:Landroid/location/UtcModel;

    .line 252
    return-object p0
.end method
