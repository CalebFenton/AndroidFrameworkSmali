.class public final Landroid/location/GlonassAssistance;
.super Ljava/lang/Object;
.source "GlonassAssistance.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GlonassAssistance$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GlonassAssistance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAlmanac:Landroid/location/GlonassAlmanac;

.field private final blacklist mAuxiliaryInformation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/AuxiliaryInformation;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRealTimeIntegrityModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/RealTimeIntegrityModel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSatelliteCorrections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GnssAssistance$GnssSatelliteCorrections;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSatelliteEphemeris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GlonassSatelliteEphemeris;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTimeModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/TimeModel;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUtcModel:Landroid/location/UtcModel;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 169
    new-instance v0, Landroid/location/GlonassAssistance$1;

    invoke-direct {v0}, Landroid/location/GlonassAssistance$1;-><init>()V

    sput-object v0, Landroid/location/GlonassAssistance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GlonassAssistance$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/location/GlonassAssistance$Builder;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {p1}, Landroid/location/GlonassAssistance$Builder;->-$$Nest$fgetmAlmanac(Landroid/location/GlonassAssistance$Builder;)Landroid/location/GlonassAlmanac;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GlonassAssistance;->mAlmanac:Landroid/location/GlonassAlmanac;

    .line 64
    invoke-static {p1}, Landroid/location/GlonassAssistance$Builder;->-$$Nest$fgetmUtcModel(Landroid/location/GlonassAssistance$Builder;)Landroid/location/UtcModel;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GlonassAssistance;->mUtcModel:Landroid/location/UtcModel;

    .line 65
    invoke-static {p1}, Landroid/location/GlonassAssistance$Builder;->-$$Nest$fgetmAuxiliaryInformation(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/GlonassAssistance$Builder;->-$$Nest$fgetmAuxiliaryInformation(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GlonassAssistance;->mAuxiliaryInformation:Ljava/util/List;

    goto :goto_2c

    .line 69
    :cond_25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GlonassAssistance;->mAuxiliaryInformation:Ljava/util/List;

    .line 71
    :goto_2c
    invoke-static {p1}, Landroid/location/GlonassAssistance$Builder;->-$$Nest$fgetmTimeModels(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/GlonassAssistance$Builder;->-$$Nest$fgetmTimeModels(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GlonassAssistance;->mTimeModels:Ljava/util/List;

    goto :goto_49

    .line 74
    :cond_42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GlonassAssistance;->mTimeModels:Ljava/util/List;

    .line 76
    :goto_49
    invoke-static {p1}, Landroid/location/GlonassAssistance$Builder;->-$$Nest$fgetmSatelliteEphemeris(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5f

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/GlonassAssistance$Builder;->-$$Nest$fgetmSatelliteEphemeris(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GlonassAssistance;->mSatelliteEphemeris:Ljava/util/List;

    goto :goto_66

    .line 80
    :cond_5f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GlonassAssistance;->mSatelliteEphemeris:Ljava/util/List;

    .line 82
    :goto_66
    invoke-static {p1}, Landroid/location/GlonassAssistance$Builder;->-$$Nest$fgetmSatelliteCorrections(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/GlonassAssistance$Builder;->-$$Nest$fgetmSatelliteCorrections(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 84
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GlonassAssistance;->mSatelliteCorrections:Ljava/util/List;

    goto :goto_83

    .line 86
    :cond_7c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GlonassAssistance;->mSatelliteCorrections:Ljava/util/List;

    .line 88
    :goto_83
    invoke-static {p1}, Landroid/location/GlonassAssistance$Builder;->-$$Nest$fgetmRealTimeIntegrityModels(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/location/GlonassAssistance$Builder;->-$$Nest$fgetmRealTimeIntegrityModels(Landroid/location/GlonassAssistance$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GlonassAssistance;->mRealTimeIntegrityModels:Ljava/util/List;

    goto :goto_a0

    .line 92
    :cond_99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/location/GlonassAssistance;->mRealTimeIntegrityModels:Ljava/util/List;

    .line 94
    :goto_a0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GlonassAssistance$Builder;Landroid/location/GlonassAssistance-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GlonassAssistance;-><init>(Landroid/location/GlonassAssistance$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAlmanac()Landroid/location/GlonassAlmanac;
    .registers 2

    .line 99
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mAlmanac:Landroid/location/GlonassAlmanac;

    return-object v0
.end method

.method public blacklist getAuxiliaryInformation()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/AuxiliaryInformation;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mAuxiliaryInformation:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRealTimeIntegrityModels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/RealTimeIntegrityModel;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mRealTimeIntegrityModels:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSatelliteCorrections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GnssAssistance$GnssSatelliteCorrections;",
            ">;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mSatelliteCorrections:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getSatelliteEphemeris()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/GlonassSatelliteEphemeris;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mSatelliteEphemeris:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getTimeModels()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/location/TimeModel;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mTimeModels:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUtcModel()Landroid/location/UtcModel;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mUtcModel:Landroid/location/UtcModel;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GlonassAssistance["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "almanac = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GlonassAssistance;->mAlmanac:Landroid/location/GlonassAlmanac;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, ", utcModel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GlonassAssistance;->mUtcModel:Landroid/location/UtcModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, ", auxiliaryInformation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GlonassAssistance;->mAuxiliaryInformation:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", timeModels = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GlonassAssistance;->mTimeModels:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, ", satelliteEphemeris = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GlonassAssistance;->mSatelliteEphemeris:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, ", satelliteCorrections = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GlonassAssistance;->mSatelliteCorrections:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, ", realTimeIntegrityModels = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GlonassAssistance;->mRealTimeIntegrityModels:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 145
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mAlmanac:Landroid/location/GlonassAlmanac;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 146
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mUtcModel:Landroid/location/UtcModel;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 147
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mAuxiliaryInformation:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 148
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mTimeModels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 149
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mSatelliteEphemeris:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 150
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mSatelliteCorrections:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 151
    iget-object v0, p0, Landroid/location/GlonassAssistance;->mRealTimeIntegrityModels:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 152
    return-void
.end method
