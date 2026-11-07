.class public Landroid/net/MobileLinkQualityInfo;
.super Landroid/net/LinkQualityInfo;
.source "MobileLinkQualityInfo.java"


# instance fields
.field private greylist-max-o mCdmaDbm:I

.field private greylist-max-o mCdmaEcio:I

.field private greylist-max-o mEvdoDbm:I

.field private greylist-max-o mEvdoEcio:I

.field private greylist-max-o mEvdoSnr:I

.field private greylist-max-o mGsmErrorRate:I

.field private greylist-max-o mLteCqi:I

.field private greylist-max-o mLteRsrp:I

.field private greylist-max-o mLteRsrq:I

.field private greylist-max-o mLteRssnr:I

.field private greylist-max-o mLteSignalStrength:I

.field private greylist-max-o mMobileNetworkType:I

.field private greylist-max-o mRssi:I


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/net/LinkQualityInfo;-><init>()V

    .line 30
    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    .line 31
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    .line 32
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    .line 33
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    .line 34
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    .line 35
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    .line 36
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    .line 37
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    .line 38
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    .line 39
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    .line 40
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    .line 41
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    .line 42
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    .line 46
    return-void
.end method

.method public static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/net/MobileLinkQualityInfo;
    .registers 3
    .param p0, "in"    # Landroid/os/Parcel;

    .line 77
    new-instance v0, Landroid/net/MobileLinkQualityInfo;

    invoke-direct {v0}, Landroid/net/MobileLinkQualityInfo;-><init>()V

    .line 79
    .local v0, "li":Landroid/net/MobileLinkQualityInfo;
    invoke-virtual {v0, p0}, Landroid/net/MobileLinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    .line 81
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    .line 82
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    .line 83
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    .line 84
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    .line 85
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    .line 86
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    .line 88
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    .line 89
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    .line 90
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    .line 91
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    .line 92
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    .line 93
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    .line 95
    return-object v0
.end method


# virtual methods
.method public greylist-max-o getCdmaDbm()I
    .registers 2

    .line 152
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    return v0
.end method

.method public greylist-max-o getCdmaEcio()I
    .registers 2

    .line 168
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    return v0
.end method

.method public greylist-max-o getEvdoDbm()I
    .registers 2

    .line 184
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    return v0
.end method

.method public greylist-max-o getEvdoEcio()I
    .registers 2

    .line 200
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    return v0
.end method

.method public greylist-max-o getEvdoSnr()I
    .registers 2

    .line 216
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    return v0
.end method

.method public greylist-max-o getGsmErrorRate()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    return v0
.end method

.method public greylist-max-o getLteCqi()I
    .registers 2

    .line 296
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    return v0
.end method

.method public greylist-max-o getLteRsrp()I
    .registers 2

    .line 248
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    return v0
.end method

.method public greylist-max-o getLteRsrq()I
    .registers 2

    .line 264
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    return v0
.end method

.method public greylist-max-o getLteRssnr()I
    .registers 2

    .line 280
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    return v0
.end method

.method public greylist-max-o getLteSignalStrength()I
    .registers 2

    .line 232
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    return v0
.end method

.method public greylist-max-r getMobileNetworkType()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    return v0
.end method

.method public greylist-max-o getRssi()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    return v0
.end method

.method public greylist-max-r setCdmaDbm(I)V
    .registers 2
    .param p1, "cdmaDbm"    # I

    .line 160
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    .line 161
    return-void
.end method

.method public greylist-max-r setCdmaEcio(I)V
    .registers 2
    .param p1, "cdmaEcio"    # I

    .line 176
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    .line 177
    return-void
.end method

.method public greylist-max-r setEvdoDbm(I)V
    .registers 2
    .param p1, "evdoDbm"    # I

    .line 192
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    .line 193
    return-void
.end method

.method public greylist-max-r setEvdoEcio(I)V
    .registers 2
    .param p1, "evdoEcio"    # I

    .line 208
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    .line 209
    return-void
.end method

.method public greylist-max-r setEvdoSnr(I)V
    .registers 2
    .param p1, "evdoSnr"    # I

    .line 224
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    .line 225
    return-void
.end method

.method public greylist-max-r setGsmErrorRate(I)V
    .registers 2
    .param p1, "gsmErrorRate"    # I

    .line 144
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    .line 145
    return-void
.end method

.method public greylist-max-r setLteCqi(I)V
    .registers 2
    .param p1, "lteCqi"    # I

    .line 304
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    .line 305
    return-void
.end method

.method public greylist-max-r setLteRsrp(I)V
    .registers 2
    .param p1, "lteRsrp"    # I

    .line 256
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    .line 257
    return-void
.end method

.method public greylist-max-r setLteRsrq(I)V
    .registers 2
    .param p1, "lteRsrq"    # I

    .line 272
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    .line 273
    return-void
.end method

.method public greylist-max-r setLteRssnr(I)V
    .registers 2
    .param p1, "lteRssnr"    # I

    .line 288
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    .line 289
    return-void
.end method

.method public greylist-max-r setLteSignalStrength(I)V
    .registers 2
    .param p1, "lteSignalStrength"    # I

    .line 240
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    .line 241
    return-void
.end method

.method public greylist-max-r setMobileNetworkType(I)V
    .registers 2
    .param p1, "mobileNetworkType"    # I

    .line 112
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    .line 113
    return-void
.end method

.method public greylist-max-r setRssi(I)V
    .registers 2
    .param p1, "Rssi"    # I

    .line 128
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    .line 129
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    const/4 v0, 0x3

    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    .line 56
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return-void
.end method
