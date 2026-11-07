.class public final Landroid/telephony/CellIdentityCdma;
.super Landroid/telephony/CellIdentity;
.source "CellIdentityCdma.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final blacklist BASESTATION_ID_MAX:I = 0xffff

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityCdma;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist LATITUDE_MAX:I = 0x13c680

.field private static final blacklist LATITUDE_MIN:I = -0x13c680

.field private static final blacklist LONGITUDE_MAX:I = 0x278d00

.field private static final blacklist LONGITUDE_MIN:I = -0x278d00

.field private static final blacklist NETWORK_ID_MAX:I = 0xffff

.field private static final blacklist SYSTEM_ID_MAX:I = 0x7fff

.field private static final greylist-max-o TAG:Ljava/lang/String;


# instance fields
.field private final greylist-max-o mBasestationId:I

.field private final greylist-max-o mLatitude:I

.field private final greylist-max-o mLongitude:I

.field private final greylist-max-o mNetworkId:I

.field private final greylist-max-o mSystemId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-class v0, Landroid/telephony/CellIdentityCdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    .line 351
    new-instance v0, Landroid/telephony/CellIdentityCdma$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityCdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityCdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 8

    .line 83
    sget-object v1, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const v1, 0x7fffffff

    iput v1, v0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 85
    iput v1, v0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 86
    iput v1, v0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 87
    iput v1, v0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 88
    iput v1, v0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 89
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor greylist-max-o <init>(IIIIILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "nid"    # I
    .param p2, "sid"    # I
    .param p3, "bid"    # I
    .param p4, "lon"    # I
    .param p5, "lat"    # I
    .param p6, "alphal"    # Ljava/lang/String;
    .param p7, "alphas"    # Ljava/lang/String;

    .line 108
    sget-object v1, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_b

    move-object v5, v7

    goto :goto_c

    :cond_b
    move-object v5, p6

    .line 109
    :goto_c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v6, v7

    goto :goto_15

    :cond_14
    move-object v6, p7

    .line 108
    :goto_15
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v1

    const v2, 0x7fffffff

    if-eqz v1, :cond_32

    .line 111
    iput v2, v0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 112
    iput v2, v0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 113
    iput v2, v0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 114
    iput v2, v0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 115
    iput v2, v0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 116
    iput-object v7, v0, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    goto :goto_70

    .line 118
    :cond_32
    const/4 v1, 0x0

    const v3, 0xffff

    invoke-static {p1, v1, v3}, Landroid/telephony/CellIdentityCdma;->inRangeOrUnavailable(III)I

    move-result v4

    iput v4, v0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 119
    const/16 v4, 0x7fff

    invoke-static {p2, v1, v4}, Landroid/telephony/CellIdentityCdma;->inRangeOrUnavailable(III)I

    move-result v4

    iput v4, v0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 120
    invoke-static {p3, v1, v3}, Landroid/telephony/CellIdentityCdma;->inRangeOrUnavailable(III)I

    move-result v1

    iput v1, v0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 121
    const v1, -0x13c680

    const v3, 0x13c680

    invoke-static {p5, v1, v3}, Landroid/telephony/CellIdentityCdma;->inRangeOrUnavailable(III)I

    move-result p5

    .line 122
    const v1, -0x278d00

    const v3, 0x278d00

    invoke-static {p4, v1, v3}, Landroid/telephony/CellIdentityCdma;->inRangeOrUnavailable(III)I

    move-result p4

    .line 124
    invoke-direct {p0, p5, p4}, Landroid/telephony/CellIdentityCdma;->isNullIsland(II)Z

    move-result v1

    if-nez v1, :cond_69

    .line 125
    iput p4, v0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 126
    iput p5, v0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    goto :goto_6d

    .line 128
    :cond_69
    iput v2, v0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iput v2, v0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 130
    :goto_6d
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->updateGlobalCellId()V

    .line 132
    :goto_70
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 312
    sget-object v0, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    .line 314
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/Flags;->cleanupCdma()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 316
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 319
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 322
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 325
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 328
    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    goto :goto_4d

    .line 332
    :cond_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    .line 338
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->updateGlobalCellId()V

    .line 341
    :goto_4d
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/telephony/CellIdentityCdma;)V
    .registers 10
    .param p1, "cid"    # Landroid/telephony/CellIdentityCdma;

    .line 135
    iget v1, p1, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    iget v2, p1, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    iget v3, p1, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    iget v4, p1, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    iget v5, p1, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iget-object v6, p1, Landroid/telephony/CellIdentityCdma;->mAlphaLong:Ljava/lang/String;

    iget-object v7, p1, Landroid/telephony/CellIdentityCdma;->mAlphaShort:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityCdma;
    .registers 2
    .param p0, "in"    # Landroid/os/Parcel;

    .line 367
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private greylist-max-o isNullIsland(II)Z
    .registers 5
    .param p1, "lat"    # I
    .param p2, "lon"    # I

    .line 174
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_e

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method


# virtual methods
.method public bridge synthetic whitelist asCellLocation()Landroid/telephony/CellLocation;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->asCellLocation()Landroid/telephony/cdma/CdmaCellLocation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist asCellLocation()Landroid/telephony/cdma/CdmaCellLocation;
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 256
    new-instance v0, Landroid/telephony/cdma/CdmaCellLocation;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaCellLocation;-><init>()V

    move-object v1, v0

    .line 257
    .local v1, "cl":Landroid/telephony/cdma/CdmaCellLocation;
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    const/4 v2, -0x1

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_11

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    goto :goto_12

    :cond_11
    move v0, v2

    .line 258
    .local v0, "bsid":I
    :goto_12
    iget v4, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    if-eq v4, v3, :cond_1a

    iget v4, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    move v5, v4

    goto :goto_1b

    :cond_1a
    move v5, v2

    .line 259
    .local v5, "sid":I
    :goto_1b
    iget v4, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    if-eq v4, v3, :cond_21

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    :cond_21
    move v6, v2

    .line 261
    .local v6, "nid":I
    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iget v4, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    move v2, v0

    .end local v0    # "bsid":I
    .local v2, "bsid":I
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/cdma/CdmaCellLocation;->setCellLocationData(IIIII)V

    .line 262
    return-object v1
.end method

.method greylist-max-o copy()Landroid/telephony/CellIdentityCdma;
    .registers 2

    .line 140
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityCdma;-><init>(Landroid/telephony/CellIdentityCdma;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 267
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 268
    return v0

    .line 271
    :cond_4
    instance-of v1, p1, Landroid/telephony/CellIdentityCdma;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 272
    return v2

    .line 275
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityCdma;

    .line 277
    .local v1, "o":Landroid/telephony/CellIdentityCdma;
    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    if-ne v3, v4, :cond_32

    iget v3, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    iget v4, v1, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    if-ne v3, v4, :cond_32

    .line 282
    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v2

    .line 277
    :goto_33
    return v0
.end method

.method public whitelist getBasestationId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    return v0
.end method

.method public whitelist getLatitude()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    return v0
.end method

.method public whitelist getLongitude()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    return v0
.end method

.method public whitelist getNetworkId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    return v0
.end method

.method public whitelist getSystemId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 198
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 244
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 245
    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 244
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-virtual {p0}, Landroid/telephony/CellIdentityCdma;->sanitizeLocationInfo()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    return-object v0
.end method

.method public whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentityCdma;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    new-instance v0, Landroid/telephony/CellIdentityCdma;

    iget-object v6, p0, Landroid/telephony/CellIdentityCdma;->mAlphaLong:Ljava/lang/String;

    iget-object v7, p0, Landroid/telephony/CellIdentityCdma;->mAlphaShort:Ljava/lang/String;

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/CellIdentityCdma;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    const-string v1, ":{ mNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 289
    const-string v1, " mSystemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 290
    const-string v1, " mBasestationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 291
    const-string v1, " mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 292
    const-string v1, " mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 293
    const-string v1, " mAlphaLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityCdma;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 294
    const-string v1, " mAlphaShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CellIdentityCdma;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0
.end method

.method protected blacklist updateGlobalCellId()V
    .registers 4

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    .line 159
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_32

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    if-eq v0, v1, :cond_32

    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    if-ne v0, v1, :cond_13

    goto :goto_32

    .line 162
    :cond_13
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%04x%04x%04x"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellIdentityCdma;->mGlobalCellId:Ljava/lang/String;

    .line 163
    return-void

    .line 160
    :cond_32
    :goto_32
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 302
    const/4 v0, 0x2

    invoke-super {p0, p1, v0}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 303
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mSystemId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mBasestationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLongitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget v0, p0, Landroid/telephony/CellIdentityCdma;->mLatitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    return-void
.end method
