.class public final Landroid/location/GlonassAssistance$Builder;
.super Ljava/lang/Object;
.source "GlonassAssistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GlonassAssistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlmanac:Landroid/location/GlonassAlmanac;

.field private blacklist mAuxiliaryInformation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/AuxiliaryInformation;",
            ">;"
        }
    .end annotation
.end field

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
            "Landroid/location/GlonassSatelliteEphemeris;",
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
.method static bridge synthetic blacklist -$$Nest$fgetmAlmanac(Landroid/location/GlonassAssistance$Builder;)Landroid/location/GlonassAlmanac;
    .registers 1

    iget-object p0, p0, Landroid/location/GlonassAssistance$Builder;->mAlmanac:Landroid/location/GlonassAlmanac;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAuxiliaryInformation(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GlonassAssistance$Builder;->mAuxiliaryInformation:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRealTimeIntegrityModels(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GlonassAssistance$Builder;->mRealTimeIntegrityModels:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteCorrections(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GlonassAssistance$Builder;->mSatelliteCorrections:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatelliteEphemeris(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GlonassAssistance$Builder;->mSatelliteEphemeris:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeModels(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/location/GlonassAssistance$Builder;->mTimeModels:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUtcModel(Landroid/location/GlonassAssistance$Builder;)Landroid/location/UtcModel;
    .registers 1

    iget-object p0, p0, Landroid/location/GlonassAssistance$Builder;->mUtcModel:Landroid/location/UtcModel;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GlonassAssistance;
    .registers 3

    .line 260
    new-instance v0, Landroid/location/GlonassAssistance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GlonassAssistance;-><init>(Landroid/location/GlonassAssistance$Builder;Landroid/location/GlonassAssistance-IA;)V

    return-object v0
.end method

.method public blacklist setAlmanac(Landroid/location/GlonassAlmanac;)Landroid/location/GlonassAssistance$Builder;
    .registers 2
    .param p1, "almanac"    # Landroid/location/GlonassAlmanac;

    .line 207
    iput-object p1, p0, Landroid/location/GlonassAssistance$Builder;->mAlmanac:Landroid/location/GlonassAlmanac;

    .line 208
    return-object p0
.end method

.method public blacklist setAuxiliaryInformation(Ljava/util/List;)Landroid/location/GlonassAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/AuxiliaryInformation;",
            ">;)",
            "Landroid/location/GlonassAssistance$Builder;"
        }
    .end annotation

    .line 222
    .local p1, "auxiliaryInformation":Ljava/util/List;, "Ljava/util/List<Landroid/location/AuxiliaryInformation;>;"
    iput-object p1, p0, Landroid/location/GlonassAssistance$Builder;->mAuxiliaryInformation:Ljava/util/List;

    .line 223
    return-object p0
.end method

.method public blacklist setRealTimeIntegrityModels(Ljava/util/List;)Landroid/location/GlonassAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/RealTimeIntegrityModel;",
            ">;)",
            "Landroid/location/GlonassAssistance$Builder;"
        }
    .end annotation

    .line 253
    .local p1, "realTimeIntegrityModels":Ljava/util/List;, "Ljava/util/List<Landroid/location/RealTimeIntegrityModel;>;"
    iput-object p1, p0, Landroid/location/GlonassAssistance$Builder;->mRealTimeIntegrityModels:Ljava/util/List;

    .line 254
    return-object p0
.end method

.method public blacklist setSatelliteCorrections(Ljava/util/List;)Landroid/location/GlonassAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAssistance$GnssSatelliteCorrections;",
            ">;)",
            "Landroid/location/GlonassAssistance$Builder;"
        }
    .end annotation

    .line 245
    .local p1, "satelliteCorrections":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAssistance$GnssSatelliteCorrections;>;"
    iput-object p1, p0, Landroid/location/GlonassAssistance$Builder;->mSatelliteCorrections:Ljava/util/List;

    .line 246
    return-object p0
.end method

.method public blacklist setSatelliteEphemeris(Ljava/util/List;)Landroid/location/GlonassAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GlonassSatelliteEphemeris;",
            ">;)",
            "Landroid/location/GlonassAssistance$Builder;"
        }
    .end annotation

    .line 237
    .local p1, "satelliteEphemeris":Ljava/util/List;, "Ljava/util/List<Landroid/location/GlonassSatelliteEphemeris;>;"
    iput-object p1, p0, Landroid/location/GlonassAssistance$Builder;->mSatelliteEphemeris:Ljava/util/List;

    .line 238
    return-object p0
.end method

.method public blacklist setTimeModels(Ljava/util/List;)Landroid/location/GlonassAssistance$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/TimeModel;",
            ">;)",
            "Landroid/location/GlonassAssistance$Builder;"
        }
    .end annotation

    .line 229
    .local p1, "timeModels":Ljava/util/List;, "Ljava/util/List<Landroid/location/TimeModel;>;"
    iput-object p1, p0, Landroid/location/GlonassAssistance$Builder;->mTimeModels:Ljava/util/List;

    .line 230
    return-object p0
.end method

.method public blacklist setUtcModel(Landroid/location/UtcModel;)Landroid/location/GlonassAssistance$Builder;
    .registers 2
    .param p1, "utcModel"    # Landroid/location/UtcModel;

    .line 214
    iput-object p1, p0, Landroid/location/GlonassAssistance$Builder;->mUtcModel:Landroid/location/UtcModel;

    .line 215
    return-object p0
.end method
