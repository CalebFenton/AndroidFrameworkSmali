.class public Landroid/net/MobileLinkQualityInfo;
.super Landroid/net/LinkQualityInfo;
.source "MobileLinkQualityInfo.java"


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmErrorRate:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mMobileNetworkType:I

.field private mRssi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const v0, 0x7fffffff

    #@3
    .line 26
    invoke-direct {p0}, Landroid/net/LinkQualityInfo;-><init>()V

    #@6
    .line 28
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    #@8
    .line 29
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    #@a
    .line 30
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    #@c
    .line 31
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    #@e
    .line 32
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    #@10
    .line 33
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    #@12
    .line 34
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    #@14
    .line 35
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    #@16
    .line 36
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    #@18
    .line 37
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    #@1a
    .line 38
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    #@1c
    .line 39
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    #@1e
    .line 40
    iput v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    #@20
    .line 26
    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/net/MobileLinkQualityInfo;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 71
    new-instance v0, Landroid/net/MobileLinkQualityInfo;

    #@2
    invoke-direct {v0}, Landroid/net/MobileLinkQualityInfo;-><init>()V

    #@5
    .line 73
    .local v0, "li":Landroid/net/MobileLinkQualityInfo;
    invoke-virtual {v0, p0}, Landroid/net/MobileLinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    #@8
    .line 75
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v1

    #@c
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    #@e
    .line 76
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v1

    #@12
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    #@14
    .line 77
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v1

    #@18
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    #@1a
    .line 78
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v1

    #@1e
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    #@20
    .line 79
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v1

    #@24
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    #@26
    .line 80
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v1

    #@2a
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    #@2c
    .line 81
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v1

    #@30
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    #@32
    .line 82
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v1

    #@36
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    #@38
    .line 83
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v1

    #@3c
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    #@3e
    .line 84
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v1

    #@42
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    #@44
    .line 85
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@47
    move-result v1

    #@48
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    #@4a
    .line 86
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@4d
    move-result v1

    #@4e
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    #@50
    .line 87
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@53
    move-result v1

    #@54
    iput v1, v0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    #@56
    .line 89
    return-object v0
.end method


# virtual methods
.method public getCdmaDbm()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    #@2
    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    #@0
    .prologue
    .line 157
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    #@2
    return v0
.end method

.method public getEvdoDbm()I
    .locals 1

    #@0
    .prologue
    .line 172
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    #@2
    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    #@0
    .prologue
    .line 187
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    #@2
    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    #@0
    .prologue
    .line 202
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    #@2
    return v0
.end method

.method public getGsmErrorRate()I
    .locals 1

    #@0
    .prologue
    .line 127
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    #@2
    return v0
.end method

.method public getLteCqi()I
    .locals 1

    #@0
    .prologue
    .line 277
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    #@2
    return v0
.end method

.method public getLteRsrp()I
    .locals 1

    #@0
    .prologue
    .line 232
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    #@2
    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    #@0
    .prologue
    .line 247
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    #@2
    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    #@0
    .prologue
    .line 262
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    #@2
    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    #@0
    .prologue
    .line 217
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    #@2
    return v0
.end method

.method public getMobileNetworkType()I
    .locals 1

    #@0
    .prologue
    .line 97
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    #@2
    return v0
.end method

.method public getRssi()I
    .locals 1

    #@0
    .prologue
    .line 112
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    #@2
    return v0
.end method

.method public setCdmaDbm(I)V
    .locals 0
    .param p1, "cdmaDbm"    # I

    #@0
    .prologue
    .line 149
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    #@2
    .line 148
    return-void
.end method

.method public setCdmaEcio(I)V
    .locals 0
    .param p1, "cdmaEcio"    # I

    #@0
    .prologue
    .line 164
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    #@2
    .line 163
    return-void
.end method

.method public setEvdoDbm(I)V
    .locals 0
    .param p1, "evdoDbm"    # I

    #@0
    .prologue
    .line 179
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    #@2
    .line 178
    return-void
.end method

.method public setEvdoEcio(I)V
    .locals 0
    .param p1, "evdoEcio"    # I

    #@0
    .prologue
    .line 194
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    #@2
    .line 193
    return-void
.end method

.method public setEvdoSnr(I)V
    .locals 0
    .param p1, "evdoSnr"    # I

    #@0
    .prologue
    .line 209
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    #@2
    .line 208
    return-void
.end method

.method public setGsmErrorRate(I)V
    .locals 0
    .param p1, "gsmErrorRate"    # I

    #@0
    .prologue
    .line 134
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    #@2
    .line 133
    return-void
.end method

.method public setLteCqi(I)V
    .locals 0
    .param p1, "lteCqi"    # I

    #@0
    .prologue
    .line 284
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    #@2
    .line 283
    return-void
.end method

.method public setLteRsrp(I)V
    .locals 0
    .param p1, "lteRsrp"    # I

    #@0
    .prologue
    .line 239
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    #@2
    .line 238
    return-void
.end method

.method public setLteRsrq(I)V
    .locals 0
    .param p1, "lteRsrq"    # I

    #@0
    .prologue
    .line 254
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    #@2
    .line 253
    return-void
.end method

.method public setLteRssnr(I)V
    .locals 0
    .param p1, "lteRssnr"    # I

    #@0
    .prologue
    .line 269
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    #@2
    .line 268
    return-void
.end method

.method public setLteSignalStrength(I)V
    .locals 0
    .param p1, "lteSignalStrength"    # I

    #@0
    .prologue
    .line 224
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    #@2
    .line 223
    return-void
.end method

.method public setMobileNetworkType(I)V
    .locals 0
    .param p1, "mobileNetworkType"    # I

    #@0
    .prologue
    .line 104
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    #@2
    .line 103
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .param p1, "Rssi"    # I

    #@0
    .prologue
    .line 119
    iput p1, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    #@2
    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 48
    const/4 v0, 0x3

    #@1
    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    #@4
    .line 50
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mMobileNetworkType:I

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 51
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mRssi:I

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 52
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mGsmErrorRate:I

    #@10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@13
    .line 53
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaDbm:I

    #@15
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@18
    .line 54
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mCdmaEcio:I

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1d
    .line 55
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoDbm:I

    #@1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@22
    .line 56
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoEcio:I

    #@24
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@27
    .line 57
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mEvdoSnr:I

    #@29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@2c
    .line 58
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteSignalStrength:I

    #@2e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@31
    .line 59
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrp:I

    #@33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@36
    .line 60
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRsrq:I

    #@38
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@3b
    .line 61
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteRssnr:I

    #@3d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@40
    .line 62
    iget v0, p0, Landroid/net/MobileLinkQualityInfo;->mLteCqi:I

    #@42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@45
    .line 47
    return-void
.end method
