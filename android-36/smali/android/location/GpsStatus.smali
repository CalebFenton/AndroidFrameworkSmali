.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$SatelliteIterator;,
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o BEIDOU_SVID_OFFSET:I = 0xc8

.field private static final greylist-max-o GLONASS_SVID_OFFSET:I = 0x40

.field public static final whitelist GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final whitelist GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final whitelist GPS_EVENT_STARTED:I = 0x1

.field public static final whitelist GPS_EVENT_STOPPED:I = 0x2

.field private static final blacklist MAX_SATELLITES:I = 0xff

.field private static final greylist-max-o SBAS_SVID_OFFSET:I = -0x57


# instance fields
.field private greylist-max-o mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTimeToFirstFix:I


# direct methods
.method public static synthetic blacklist $r8$lambda$jWnpP9tX-JwbkairoPQcaYTRp1Y(Landroid/location/GpsStatus;)Ljava/util/Iterator;
    .registers 1

    invoke-direct {p0}, Landroid/location/GpsStatus;->lambda$new$0()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSatellites(Landroid/location/GpsStatus;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    return-object p0
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Landroid/location/GpsStatus$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$$ExternalSyntheticLambda0;-><init>(Landroid/location/GpsStatus;)V

    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    .line 165
    return-void
.end method

.method public static whitelist create(Landroid/location/GnssStatus;I)Landroid/location/GpsStatus;
    .registers 3
    .param p0, "gnssStatus"    # Landroid/location/GnssStatus;
    .param p1, "timeToFirstFix"    # I

    .line 149
    new-instance v0, Landroid/location/GpsStatus;

    invoke-direct {v0}, Landroid/location/GpsStatus;-><init>()V

    .line 150
    .local v0, "status":Landroid/location/GpsStatus;
    invoke-virtual {v0, p0, p1}, Landroid/location/GpsStatus;->setStatus(Landroid/location/GnssStatus;I)V

    .line 151
    return-object v0
.end method

.method static blacklist createEmpty()Landroid/location/GpsStatus;
    .registers 1

    .line 161
    new-instance v0, Landroid/location/GpsStatus;

    invoke-direct {v0}, Landroid/location/GpsStatus;-><init>()V

    return-object v0
.end method

.method private synthetic blacklist lambda$new$0()Ljava/util/Iterator;
    .registers 2

    .line 80
    new-instance v0, Landroid/location/GpsStatus$SatelliteIterator;

    invoke-direct {v0, p0}, Landroid/location/GpsStatus$SatelliteIterator;-><init>(Landroid/location/GpsStatus;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getMaxSatellites()I
    .registers 2

    .line 242
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getSatellites()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    return-object v0
.end method

.method public whitelist getTimeToFirstFix()I
    .registers 2

    .line 222
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    return v0
.end method

.method greylist-max-o setStatus(Landroid/location/GnssStatus;I)V
    .registers 9
    .param p1, "status"    # Landroid/location/GnssStatus;
    .param p2, "timeToFirstFix"    # I

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 172
    iget-object v1, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/location/GpsSatellite;->mValid:Z

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    .end local v0    # "i":I
    :cond_17
    iput p2, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    .line 176
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1a
    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 177
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result v1

    .line 178
    .local v1, "constellationType":I
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result v2

    .line 185
    .local v2, "prn":I
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2f

    .line 186
    add-int/lit8 v2, v2, 0x40

    goto :goto_41

    .line 187
    :cond_2f
    const/4 v3, 0x5

    if-ne v1, v3, :cond_35

    .line 188
    add-int/lit16 v2, v2, 0xc8

    goto :goto_41

    .line 189
    :cond_35
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3b

    .line 190
    add-int/lit8 v2, v2, -0x57

    goto :goto_41

    .line 191
    :cond_3b
    if-eq v1, v4, :cond_41

    const/4 v3, 0x4

    if-eq v1, v3, :cond_41

    .line 193
    goto :goto_83

    .line 195
    :cond_41
    :goto_41
    if-lez v2, :cond_83

    const/16 v3, 0xff

    if-le v2, v3, :cond_48

    .line 196
    goto :goto_83

    .line 199
    :cond_48
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 200
    .local v3, "satellite":Landroid/location/GpsSatellite;
    if-nez v3, :cond_5d

    .line 201
    new-instance v5, Landroid/location/GpsSatellite;

    invoke-direct {v5, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    move-object v3, v5

    .line 202
    iget-object v5, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 205
    :cond_5d
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mValid:Z

    .line 206
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result v4

    iput v4, v3, Landroid/location/GpsSatellite;->mSnr:F

    .line 207
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result v4

    iput v4, v3, Landroid/location/GpsSatellite;->mElevation:F

    .line 208
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result v4

    iput v4, v3, Landroid/location/GpsSatellite;->mAzimuth:F

    .line 209
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->hasEphemerisData(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    .line 210
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->hasAlmanacData(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    .line 211
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v4

    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z

    .line 176
    .end local v1    # "constellationType":I
    .end local v2    # "prn":I
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_83
    :goto_83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 213
    .end local v0    # "i":I
    :cond_86
    return-void
.end method
