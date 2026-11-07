.class public final Landroid/location/GnssAssistance;
.super Ljava/lang/Object;
.source "GnssAssistance.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssAssistance$Builder;,
        Landroid/location/GnssAssistance$GnssSatelliteCorrections;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssAssistance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBeidouAssistance:Landroid/location/BeidouAssistance;

.field private final blacklist mGalileoAssistance:Landroid/location/GalileoAssistance;

.field private final blacklist mGlonassAssistance:Landroid/location/GlonassAssistance;

.field private final blacklist mGpsAssistance:Landroid/location/GpsAssistance;

.field private final blacklist mQzssAssistance:Landroid/location/QzssAssistance;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 96
    new-instance v0, Landroid/location/GnssAssistance$1;

    invoke-direct {v0}, Landroid/location/GnssAssistance$1;-><init>()V

    sput-object v0, Landroid/location/GnssAssistance;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/location/GnssAssistance$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/location/GnssAssistance$Builder;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Landroid/location/GnssAssistance$Builder;->-$$Nest$fgetmGpsAssistance(Landroid/location/GnssAssistance$Builder;)Landroid/location/GpsAssistance;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAssistance;->mGpsAssistance:Landroid/location/GpsAssistance;

    .line 60
    invoke-static {p1}, Landroid/location/GnssAssistance$Builder;->-$$Nest$fgetmGlonassAssistance(Landroid/location/GnssAssistance$Builder;)Landroid/location/GlonassAssistance;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAssistance;->mGlonassAssistance:Landroid/location/GlonassAssistance;

    .line 61
    invoke-static {p1}, Landroid/location/GnssAssistance$Builder;->-$$Nest$fgetmGalileoAssistance(Landroid/location/GnssAssistance$Builder;)Landroid/location/GalileoAssistance;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAssistance;->mGalileoAssistance:Landroid/location/GalileoAssistance;

    .line 62
    invoke-static {p1}, Landroid/location/GnssAssistance$Builder;->-$$Nest$fgetmBeidouAssistance(Landroid/location/GnssAssistance$Builder;)Landroid/location/BeidouAssistance;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAssistance;->mBeidouAssistance:Landroid/location/BeidouAssistance;

    .line 63
    invoke-static {p1}, Landroid/location/GnssAssistance$Builder;->-$$Nest$fgetmQzssAssistance(Landroid/location/GnssAssistance$Builder;)Landroid/location/QzssAssistance;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GnssAssistance;->mQzssAssistance:Landroid/location/QzssAssistance;

    .line 64
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/location/GnssAssistance$Builder;Landroid/location/GnssAssistance-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/location/GnssAssistance;-><init>(Landroid/location/GnssAssistance$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBeidouAssistance()Landroid/location/BeidouAssistance;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/location/GnssAssistance;->mBeidouAssistance:Landroid/location/BeidouAssistance;

    return-object v0
.end method

.method public blacklist getGalileoAssistance()Landroid/location/GalileoAssistance;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/location/GnssAssistance;->mGalileoAssistance:Landroid/location/GalileoAssistance;

    return-object v0
.end method

.method public blacklist getGlonassAssistance()Landroid/location/GlonassAssistance;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/location/GnssAssistance;->mGlonassAssistance:Landroid/location/GlonassAssistance;

    return-object v0
.end method

.method public blacklist getGpsAssistance()Landroid/location/GpsAssistance;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/location/GnssAssistance;->mGpsAssistance:Landroid/location/GpsAssistance;

    return-object v0
.end method

.method public blacklist getQzssAssistance()Landroid/location/QzssAssistance;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/location/GnssAssistance;->mQzssAssistance:Landroid/location/QzssAssistance;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GnssAssistance["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "gpsAssistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssAssistance;->mGpsAssistance:Landroid/location/GpsAssistance;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, ", glonassAssistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssAssistance;->mGlonassAssistance:Landroid/location/GlonassAssistance;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", galileoAssistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssAssistance;->mGalileoAssistance:Landroid/location/GalileoAssistance;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    const-string v1, ", beidouAssistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssAssistance;->mBeidouAssistance:Landroid/location/BeidouAssistance;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", qzssAssistance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/GnssAssistance;->mQzssAssistance:Landroid/location/QzssAssistance;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 123
    iget-object v0, p0, Landroid/location/GnssAssistance;->mGpsAssistance:Landroid/location/GpsAssistance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 124
    iget-object v0, p0, Landroid/location/GnssAssistance;->mGlonassAssistance:Landroid/location/GlonassAssistance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 125
    iget-object v0, p0, Landroid/location/GnssAssistance;->mGalileoAssistance:Landroid/location/GalileoAssistance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 126
    iget-object v0, p0, Landroid/location/GnssAssistance;->mBeidouAssistance:Landroid/location/BeidouAssistance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    iget-object v0, p0, Landroid/location/GnssAssistance;->mQzssAssistance:Landroid/location/QzssAssistance;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 128
    return-void
.end method
