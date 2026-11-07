.class public Landroid/telephony/NeighboringCellInfo;
.super Ljava/lang/Object;
.source "NeighboringCellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist UNKNOWN_CID:I = -0x1

.field public static final whitelist UNKNOWN_RSSI:I = 0x63


# instance fields
.field private greylist-max-p mCid:I

.field private greylist-max-p mLac:I

.field private greylist-max-p mNetworkType:I

.field private greylist-max-p mPsc:I

.field private greylist-max-p mRssi:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 334
    new-instance v0, Landroid/telephony/NeighboringCellInfo$1;

    invoke-direct {v0}, Landroid/telephony/NeighboringCellInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 95
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 96
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 98
    return-void
.end method

.method public constructor whitelist <init>(II)V
    .registers 3
    .param p1, "rssi"    # I
    .param p2, "cid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 112
    iput p2, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 113
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;I)V
    .registers 10
    .param p1, "rssi"    # I
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "radioType"    # I

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 162
    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 163
    iput v1, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 164
    iput v1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 168
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 169
    .local v2, "l":I
    const/16 v3, 0x8

    if-le v2, v3, :cond_18

    return-void

    .line 170
    :cond_18
    if-ge v2, v3, :cond_35

    .line 171
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1b
    rsub-int/lit8 v4, v2, 0x8

    if-ge v3, v4, :cond_35

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 177
    .end local v3    # "i":I
    :cond_35
    const/16 v3, 0x10

    packed-switch p3, :pswitch_data_70

    :pswitch_3a
    goto :goto_6e

    .line 191
    :pswitch_3b
    :try_start_3b
    iput p3, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 192
    invoke-static {p2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    goto :goto_6e

    .line 180
    :pswitch_44
    iput p3, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 182
    const-string v4, "FFFFFFFF"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 183
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 184
    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_63} :catch_64

    goto :goto_6e

    .line 195
    :catch_64
    move-exception v3

    .line 197
    .local v3, "e":Ljava/lang/NumberFormatException;
    iput v1, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 198
    iput v1, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 199
    iput v1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 200
    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    goto :goto_6f

    .line 201
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_6e
    :goto_6e
    nop

    .line 202
    :goto_6f
    return-void

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_44
        :pswitch_44
        :pswitch_3b
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3a
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 213
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellInfoGsm;)V
    .registers 5
    .param p1, "info"    # Landroid/telephony/CellInfoGsm;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 119
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 120
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1b

    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 122
    :cond_1b
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 123
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2c

    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 125
    :cond_2c
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 126
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    if-ne v0, v1, :cond_3c

    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 128
    :cond_3c
    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 129
    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellInfoWcdma;)V
    .registers 5
    .param p1, "info"    # Landroid/telephony/CellInfoWcdma;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x3

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    .line 135
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 136
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_1b

    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 138
    :cond_1b
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 139
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_2c

    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    .line 141
    :cond_2c
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 142
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    if-ne v0, v1, :cond_3c

    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 144
    :cond_3c
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v0

    iput v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 145
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    if-ne v0, v1, :cond_4c

    iput v2, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    .line 146
    :cond_4c
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCid()I
    .registers 2

    .line 239
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    return v0
.end method

.method public whitelist getLac()I
    .registers 2

    .line 231
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    return v0
.end method

.method public whitelist getNetworkType()I
    .registers 2

    .line 272
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    return v0
.end method

.method public whitelist getPsc()I
    .registers 2

    .line 247
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    return v0
.end method

.method public whitelist getRssi()I
    .registers 2

    .line 223
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    return v0
.end method

.method public whitelist setCid(I)V
    .registers 2
    .param p1, "cid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 287
    return-void
.end method

.method public whitelist setRssi(I)V
    .registers 2
    .param p1, "rssi"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 301
    iput p1, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    .line 302
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    const-string v2, "-"

    const/16 v3, 0x63

    const-string v4, "@"

    const/4 v5, -0x1

    if-eq v1, v5, :cond_32

    .line 310
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 311
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    if-ne v4, v3, :cond_28

    goto :goto_2e

    :cond_28
    iget v2, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 312
    :cond_32
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    if-eq v1, v5, :cond_60

    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    if-eq v1, v5, :cond_60

    .line 313
    iget v1, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    .line 314
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    if-ne v4, v3, :cond_57

    goto :goto_5d

    :cond_57
    iget v2, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    :cond_60
    :goto_60
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 327
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mPsc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    iget v0, p0, Landroid/telephony/NeighboringCellInfo;->mNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    return-void
.end method
