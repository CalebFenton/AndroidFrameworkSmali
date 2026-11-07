.class public final Landroid/location/GnssAssistance$Builder;
.super Ljava/lang/Object;
.source "GnssAssistance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/GnssAssistance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBeidouAssistance:Landroid/location/BeidouAssistance;

.field private blacklist mGalileoAssistance:Landroid/location/GalileoAssistance;

.field private blacklist mGlonassAssistance:Landroid/location/GlonassAssistance;

.field private blacklist mGpsAssistance:Landroid/location/GpsAssistance;

.field private blacklist mQzssAssistance:Landroid/location/QzssAssistance;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBeidouAssistance(Landroid/location/GnssAssistance$Builder;)Landroid/location/BeidouAssistance;
    .registers 1

    iget-object p0, p0, Landroid/location/GnssAssistance$Builder;->mBeidouAssistance:Landroid/location/BeidouAssistance;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGalileoAssistance(Landroid/location/GnssAssistance$Builder;)Landroid/location/GalileoAssistance;
    .registers 1

    iget-object p0, p0, Landroid/location/GnssAssistance$Builder;->mGalileoAssistance:Landroid/location/GalileoAssistance;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGlonassAssistance(Landroid/location/GnssAssistance$Builder;)Landroid/location/GlonassAssistance;
    .registers 1

    iget-object p0, p0, Landroid/location/GnssAssistance$Builder;->mGlonassAssistance:Landroid/location/GlonassAssistance;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGpsAssistance(Landroid/location/GnssAssistance$Builder;)Landroid/location/GpsAssistance;
    .registers 1

    iget-object p0, p0, Landroid/location/GnssAssistance$Builder;->mGpsAssistance:Landroid/location/GpsAssistance;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQzssAssistance(Landroid/location/GnssAssistance$Builder;)Landroid/location/QzssAssistance;
    .registers 1

    iget-object p0, p0, Landroid/location/GnssAssistance$Builder;->mQzssAssistance:Landroid/location/QzssAssistance;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/location/GnssAssistance;
    .registers 3

    .line 189
    new-instance v0, Landroid/location/GnssAssistance;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GnssAssistance;-><init>(Landroid/location/GnssAssistance$Builder;Landroid/location/GnssAssistance-IA;)V

    return-object v0
.end method

.method public blacklist setBeidouAssistance(Landroid/location/BeidouAssistance;)Landroid/location/GnssAssistance$Builder;
    .registers 2
    .param p1, "beidouAssistance"    # Landroid/location/BeidouAssistance;

    .line 175
    iput-object p1, p0, Landroid/location/GnssAssistance$Builder;->mBeidouAssistance:Landroid/location/BeidouAssistance;

    .line 176
    return-object p0
.end method

.method public blacklist setGalileoAssistance(Landroid/location/GalileoAssistance;)Landroid/location/GnssAssistance$Builder;
    .registers 2
    .param p1, "galileoAssistance"    # Landroid/location/GalileoAssistance;

    .line 168
    iput-object p1, p0, Landroid/location/GnssAssistance$Builder;->mGalileoAssistance:Landroid/location/GalileoAssistance;

    .line 169
    return-object p0
.end method

.method public blacklist setGlonassAssistance(Landroid/location/GlonassAssistance;)Landroid/location/GnssAssistance$Builder;
    .registers 2
    .param p1, "glonassAssistance"    # Landroid/location/GlonassAssistance;

    .line 161
    iput-object p1, p0, Landroid/location/GnssAssistance$Builder;->mGlonassAssistance:Landroid/location/GlonassAssistance;

    .line 162
    return-object p0
.end method

.method public blacklist setGpsAssistance(Landroid/location/GpsAssistance;)Landroid/location/GnssAssistance$Builder;
    .registers 2
    .param p1, "gpsAssistance"    # Landroid/location/GpsAssistance;

    .line 154
    iput-object p1, p0, Landroid/location/GnssAssistance$Builder;->mGpsAssistance:Landroid/location/GpsAssistance;

    .line 155
    return-object p0
.end method

.method public blacklist setQzssAssistance(Landroid/location/QzssAssistance;)Landroid/location/GnssAssistance$Builder;
    .registers 2
    .param p1, "qzssAssistance"    # Landroid/location/QzssAssistance;

    .line 182
    iput-object p1, p0, Landroid/location/GnssAssistance$Builder;->mQzssAssistance:Landroid/location/QzssAssistance;

    .line 183
    return-object p0
.end method
