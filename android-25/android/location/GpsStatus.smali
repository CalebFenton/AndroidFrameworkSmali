.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$1;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$SatelliteIterator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final BEIDOU_SVID_OFFSET:I = 0xc8

.field private static final GLONASS_SVID_OFFSET:I = 0x40

.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0xff

.field private static final SBAS_SVID_OFFSET:I = -0x57


# instance fields
.field private mSatelliteList:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private final mSatellites:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeToFirstFix:I


# direct methods
.method static synthetic -get0(Landroid/location/GpsStatus;)Landroid/util/SparseArray;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@2
    return-object v0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@a
    .line 81
    new-instance v0, Landroid/location/GpsStatus$1;

    #@c
    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    #@f
    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    #@11
    .line 150
    return-void
.end method

.method private clearSatellites()V
    .locals 4

    #@0
    .prologue
    .line 244
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v2

    #@6
    .line 245
    .local v2, "satellitesCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@9
    .line 246
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/location/GpsSatellite;

    #@11
    .line 247
    .local v1, "satellite":Landroid/location/GpsSatellite;
    const/4 v3, 0x0

    #@12
    iput-boolean v3, v1, Landroid/location/GpsSatellite;->mValid:Z

    #@14
    .line 245
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 243
    .end local v1    # "satellite":Landroid/location/GpsSatellite;
    :cond_0
    return-void
.end method

.method private setStatus(I[I[F[F[F)V
    .locals 7
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 154
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    #@5
    .line 155
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_9

    #@8
    .line 157
    aget v4, p2, v1

    #@a
    shr-int/lit8 v4, v4, 0x3

    #@c
    and-int/lit8 v0, v4, 0xf

    #@e
    .line 159
    .local v0, "constellationType":I
    aget v4, p2, v1

    #@10
    shr-int/lit8 v2, v4, 0x7

    #@12
    .line 166
    .local v2, "prn":I
    const/4 v4, 0x3

    #@13
    if-ne v0, v4, :cond_3

    #@15
    .line 167
    add-int/lit8 v2, v2, 0x40

    #@17
    .line 176
    :cond_0
    :goto_1
    if-lez v2, :cond_2

    #@19
    const/16 v4, 0xff

    #@1b
    if-gt v2, v4, :cond_2

    #@1d
    .line 177
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Landroid/location/GpsSatellite;

    #@25
    .line 178
    .local v3, "satellite":Landroid/location/GpsSatellite;
    if-nez v3, :cond_1

    #@27
    .line 179
    new-instance v3, Landroid/location/GpsSatellite;

    #@29
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    invoke-direct {v3, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    #@2c
    .line 180
    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@2e
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@31
    .line 183
    :cond_1
    iput-boolean v5, v3, Landroid/location/GpsSatellite;->mValid:Z

    #@33
    .line 184
    aget v4, p3, v1

    #@35
    iput v4, v3, Landroid/location/GpsSatellite;->mSnr:F

    #@37
    .line 185
    aget v4, p4, v1

    #@39
    iput v4, v3, Landroid/location/GpsSatellite;->mElevation:F

    #@3b
    .line 186
    aget v4, p5, v1

    #@3d
    iput v4, v3, Landroid/location/GpsSatellite;->mAzimuth:F

    #@3f
    .line 188
    aget v4, p2, v1

    #@41
    and-int/lit8 v4, v4, 0x1

    #@43
    if-eqz v4, :cond_6

    #@45
    move v4, v5

    #@46
    .line 187
    :goto_2
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    #@48
    .line 190
    aget v4, p2, v1

    #@4a
    and-int/lit8 v4, v4, 0x2

    #@4c
    if-eqz v4, :cond_7

    #@4e
    move v4, v5

    #@4f
    .line 189
    :goto_3
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    #@51
    .line 192
    aget v4, p2, v1

    #@53
    and-int/lit8 v4, v4, 0x4

    #@55
    if-eqz v4, :cond_8

    #@57
    move v4, v5

    #@58
    .line 191
    :goto_4
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z

    #@5a
    .line 155
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    :goto_5
    add-int/lit8 v1, v1, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 168
    :cond_3
    const/4 v4, 0x5

    #@5e
    if-ne v0, v4, :cond_4

    #@60
    .line 169
    add-int/lit16 v2, v2, 0xc8

    #@62
    goto :goto_1

    #@63
    .line 170
    :cond_4
    const/4 v4, 0x2

    #@64
    if-ne v0, v4, :cond_5

    #@66
    .line 171
    add-int/lit8 v2, v2, -0x57

    #@68
    goto :goto_1

    #@69
    .line 172
    :cond_5
    if-eq v0, v5, :cond_0

    #@6b
    .line 173
    const/4 v4, 0x4

    #@6c
    if-eq v0, v4, :cond_0

    #@6e
    goto :goto_5

    #@6f
    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_6
    move v4, v6

    #@70
    .line 188
    goto :goto_2

    #@71
    :cond_7
    move v4, v6

    #@72
    .line 190
    goto :goto_3

    #@73
    :cond_8
    move v4, v6

    #@74
    .line 192
    goto :goto_4

    #@75
    .line 153
    .end local v0    # "constellationType":I
    .end local v2    # "prn":I
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_9
    return-void
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    #@0
    .prologue
    .line 240
    const/16 v0, 0xff

    #@2
    return v0
.end method

.method public getSatellites()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    #@2
    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    #@0
    .prologue
    .line 220
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    #@2
    return v0
.end method

.method setStatus(Landroid/location/GnssStatus;I)V
    .locals 6
    .param p1, "status"    # Landroid/location/GnssStatus;
    .param p2, "timeToFirstFix"    # I

    #@0
    .prologue
    .line 204
    iput p2, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    #@2
    .line 205
    iget v1, p1, Landroid/location/GnssStatus;->mSvCount:I

    #@4
    iget-object v2, p1, Landroid/location/GnssStatus;->mSvidWithFlags:[I

    #@6
    iget-object v3, p1, Landroid/location/GnssStatus;->mCn0DbHz:[F

    #@8
    iget-object v4, p1, Landroid/location/GnssStatus;->mElevations:[F

    #@a
    .line 206
    iget-object v5, p1, Landroid/location/GnssStatus;->mAzimuths:[F

    #@c
    move-object v0, p0

    #@d
    .line 205
    invoke-direct/range {v0 .. v5}, Landroid/location/GpsStatus;->setStatus(I[I[F[F[F)V

    #@10
    .line 203
    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .param p1, "ttff"    # I

    #@0
    .prologue
    .line 210
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    #@2
    .line 209
    return-void
.end method
