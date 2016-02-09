.class public final Landroid/location/GpsStatus;
.super Ljava/lang/Object;
.source "GpsStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsStatus$SatelliteIterator;,
        Landroid/location/GpsStatus$Listener;,
        Landroid/location/GpsStatus$NmeaListener;,
        Landroid/location/GpsStatus$1;
    }
.end annotation


# static fields
.field public static final GPS_EVENT_FIRST_FIX:I = 0x3

.field public static final GPS_EVENT_SATELLITE_STATUS:I = 0x4

.field public static final GPS_EVENT_STARTED:I = 0x1

.field public static final GPS_EVENT_STOPPED:I = 0x2

.field private static final NUM_SATELLITES:I = 0xff


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
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@a
    .line 74
    new-instance v0, Landroid/location/GpsStatus$1;

    #@c
    invoke-direct {v0, p0}, Landroid/location/GpsStatus$1;-><init>(Landroid/location/GpsStatus;)V

    #@f
    iput-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    #@11
    .line 138
    return-void
.end method

.method private clearSatellites()V
    .locals 4

    #@0
    .prologue
    .line 247
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@2
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@5
    move-result v2

    #@6
    .line 248
    .local v2, "satellitesCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@9
    .line 249
    iget-object v3, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/location/GpsSatellite;

    #@11
    .line 250
    .local v1, "satellite":Landroid/location/GpsSatellite;
    const/4 v3, 0x0

    #@12
    iput-boolean v3, v1, Landroid/location/GpsSatellite;->mValid:Z

    #@14
    .line 248
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 246
    .end local v1    # "satellite":Landroid/location/GpsSatellite;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMaxSatellites()I
    .locals 1

    #@0
    .prologue
    .line 243
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
    .line 233
    iget-object v0, p0, Landroid/location/GpsStatus;->mSatelliteList:Ljava/lang/Iterable;

    #@2
    return-object v0
.end method

.method public getTimeToFirstFix()I
    .locals 1

    #@0
    .prologue
    .line 223
    iget v0, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    #@2
    return v0
.end method

.method declared-synchronized setStatus(I[I[F[F[FIII)V
    .locals 7
    .param p1, "svCount"    # I
    .param p2, "prns"    # [I
    .param p3, "snrs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "ephemerisMask"    # I
    .param p7, "almanacMask"    # I
    .param p8, "usedInFixMask"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 148
    :try_start_0
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    #@6
    .line 149
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_5

    #@9
    .line 150
    aget v1, p2, v0

    #@b
    .line 151
    .local v1, "prn":I
    add-int/lit8 v4, v1, -0x1

    #@d
    shl-int v2, v5, v4

    #@f
    .line 152
    .local v2, "prnShift":I
    if-lez v1, :cond_1

    #@11
    const/16 v4, 0xff

    #@13
    if-gt v1, v4, :cond_1

    #@15
    .line 153
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@17
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Landroid/location/GpsSatellite;

    #@1d
    .line 154
    .local v3, "satellite":Landroid/location/GpsSatellite;
    if-nez v3, :cond_0

    #@1f
    .line 155
    new-instance v3, Landroid/location/GpsSatellite;

    #@21
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    invoke-direct {v3, v1}, Landroid/location/GpsSatellite;-><init>(I)V

    #@24
    .line 156
    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    iget-object v4, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@26
    invoke-virtual {v4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@29
    .line 159
    :cond_0
    const/4 v4, 0x1

    #@2a
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mValid:Z

    #@2c
    .line 160
    aget v4, p3, v0

    #@2e
    iput v4, v3, Landroid/location/GpsSatellite;->mSnr:F

    #@30
    .line 161
    aget v4, p4, v0

    #@32
    iput v4, v3, Landroid/location/GpsSatellite;->mElevation:F

    #@34
    .line 162
    aget v4, p5, v0

    #@36
    iput v4, v3, Landroid/location/GpsSatellite;->mAzimuth:F

    #@38
    .line 163
    and-int v4, p6, v2

    #@3a
    if-eqz v4, :cond_2

    #@3c
    move v4, v5

    #@3d
    :goto_1
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasEphemeris:Z

    #@3f
    .line 164
    and-int v4, p7, v2

    #@41
    if-eqz v4, :cond_3

    #@43
    move v4, v5

    #@44
    :goto_2
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mHasAlmanac:Z

    #@46
    .line 165
    and-int v4, p8, v2

    #@48
    if-eqz v4, :cond_4

    #@4a
    move v4, v5

    #@4b
    :goto_3
    iput-boolean v4, v3, Landroid/location/GpsSatellite;->mUsedInFix:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4d
    .line 149
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@4f
    goto :goto_0

    #@50
    .restart local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    move v4, v6

    #@51
    .line 163
    goto :goto_1

    #@52
    :cond_3
    move v4, v6

    #@53
    .line 164
    goto :goto_2

    #@54
    :cond_4
    move v4, v6

    #@55
    .line 165
    goto :goto_3

    #@56
    .end local v1    # "prn":I
    .end local v2    # "prnShift":I
    .end local v3    # "satellite":Landroid/location/GpsSatellite;
    :cond_5
    monitor-exit p0

    #@57
    .line 147
    return-void

    #@58
    .end local v0    # "i":I
    :catchall_0
    move-exception v4

    #@59
    monitor-exit p0

    #@5a
    throw v4
.end method

.method setStatus(Landroid/location/GpsStatus;)V
    .locals 9
    .param p1, "status"    # Landroid/location/GpsStatus;

    #@0
    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getTimeToFirstFix()I

    #@3
    move-result v8

    #@4
    iput v8, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    #@6
    .line 178
    invoke-direct {p0}, Landroid/location/GpsStatus;->clearSatellites()V

    #@9
    .line 180
    iget-object v3, p1, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@b
    .line 181
    .local v3, "otherSatellites":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/location/GpsSatellite;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@e
    move-result v4

    #@f
    .line 182
    .local v4, "otherSatellitesCount":I
    const/4 v6, 0x0

    #@10
    .line 185
    .local v6, "satelliteIndex":I
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_3

    #@13
    .line 186
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Landroid/location/GpsSatellite;

    #@19
    .line 187
    .local v1, "otherSatellite":Landroid/location/GpsSatellite;
    invoke-virtual {v1}, Landroid/location/GpsSatellite;->getPrn()I

    #@1c
    move-result v2

    #@1d
    .line 189
    .local v2, "otherSatellitePrn":I
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@1f
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@22
    move-result v7

    #@23
    .line 190
    .local v7, "satellitesCount":I
    :goto_1
    if-ge v6, v7, :cond_0

    #@25
    .line 191
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@27
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v8

    #@2b
    check-cast v8, Landroid/location/GpsSatellite;

    #@2d
    invoke-virtual {v8}, Landroid/location/GpsSatellite;->getPrn()I

    #@30
    move-result v8

    #@31
    if-ge v8, v2, :cond_0

    #@33
    .line 192
    add-int/lit8 v6, v6, 0x1

    #@35
    goto :goto_1

    #@36
    .line 195
    :cond_0
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@38
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    #@3b
    move-result v8

    #@3c
    if-ge v6, v8, :cond_2

    #@3e
    .line 196
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@40
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@43
    move-result-object v5

    #@44
    check-cast v5, Landroid/location/GpsSatellite;

    #@46
    .line 197
    .local v5, "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getPrn()I

    #@49
    move-result v8

    #@4a
    if-ne v8, v2, :cond_1

    #@4c
    .line 198
    invoke-virtual {v5, v1}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    #@4f
    .line 185
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_0

    #@52
    .line 200
    :cond_1
    new-instance v5, Landroid/location/GpsSatellite;

    #@54
    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    invoke-direct {v5, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    #@57
    .line 201
    .restart local v5    # "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v5, v1}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    #@5a
    .line 202
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@5c
    invoke-virtual {v8, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@5f
    goto :goto_2

    #@60
    .line 205
    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    :cond_2
    new-instance v5, Landroid/location/GpsSatellite;

    #@62
    invoke-direct {v5, v2}, Landroid/location/GpsSatellite;-><init>(I)V

    #@65
    .line 206
    .restart local v5    # "satellite":Landroid/location/GpsSatellite;
    invoke-virtual {v5, v1}, Landroid/location/GpsSatellite;->setStatus(Landroid/location/GpsSatellite;)V

    #@68
    .line 207
    iget-object v8, p0, Landroid/location/GpsStatus;->mSatellites:Landroid/util/SparseArray;

    #@6a
    invoke-virtual {v8, v2, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    #@6d
    goto :goto_2

    #@6e
    .line 176
    .end local v1    # "otherSatellite":Landroid/location/GpsSatellite;
    .end local v2    # "otherSatellitePrn":I
    .end local v5    # "satellite":Landroid/location/GpsSatellite;
    .end local v7    # "satellitesCount":I
    :cond_3
    return-void
.end method

.method setTimeToFirstFix(I)V
    .locals 0
    .param p1, "ttff"    # I

    #@0
    .prologue
    .line 213
    iput p1, p0, Landroid/location/GpsStatus;->mTimeToFirstFix:I

    #@2
    .line 212
    return-void
.end method
