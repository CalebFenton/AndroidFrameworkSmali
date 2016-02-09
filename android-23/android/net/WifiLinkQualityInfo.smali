.class public Landroid/net/WifiLinkQualityInfo;
.super Landroid/net/LinkQualityInfo;
.source "WifiLinkQualityInfo.java"


# instance fields
.field private mBssid:Ljava/lang/String;

.field private mRssi:I

.field private mTxBad:J

.field private mTxGood:J

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    const-wide v2, 0x7fffffffffffffffL

    #@5
    const v0, 0x7fffffff

    #@8
    .line 26
    invoke-direct {p0}, Landroid/net/LinkQualityInfo;-><init>()V

    #@b
    .line 29
    iput v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    #@d
    .line 34
    iput v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    #@f
    .line 37
    iput-wide v2, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    #@11
    .line 38
    iput-wide v2, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    #@13
    .line 26
    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/net/WifiLinkQualityInfo;
    .locals 4
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 61
    new-instance v0, Landroid/net/WifiLinkQualityInfo;

    #@2
    invoke-direct {v0}, Landroid/net/WifiLinkQualityInfo;-><init>()V

    #@5
    .line 63
    .local v0, "li":Landroid/net/WifiLinkQualityInfo;
    invoke-virtual {v0, p0}, Landroid/net/WifiLinkQualityInfo;->initializeFromParcel(Landroid/os/Parcel;)V

    #@8
    .line 65
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v1

    #@c
    iput v1, v0, Landroid/net/WifiLinkQualityInfo;->mType:I

    #@e
    .line 66
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v1

    #@12
    iput v1, v0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    #@14
    .line 67
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    #@17
    move-result-wide v2

    #@18
    iput-wide v2, v0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    #@1a
    .line 68
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    #@1d
    move-result-wide v2

    #@1e
    iput-wide v2, v0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    #@20
    .line 70
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    iput-object v1, v0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    #@26
    .line 72
    return-object v0
.end method


# virtual methods
.method public getBssid()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRssi()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    #@2
    return v0
.end method

.method public getTxBad()J
    .locals 2

    #@0
    .prologue
    .line 140
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    #@2
    return-wide v0
.end method

.method public getTxGood()J
    .locals 2

    #@0
    .prologue
    .line 125
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    #@2
    return-wide v0
.end method

.method public getType()I
    .locals 1

    #@0
    .prologue
    .line 80
    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    #@2
    return v0
.end method

.method public setBssid(Ljava/lang/String;)V
    .locals 0
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 102
    iput-object p1, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    #@2
    .line 101
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    #@0
    .prologue
    .line 117
    iput p1, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    #@2
    .line 116
    return-void
.end method

.method public setTxBad(J)V
    .locals 1
    .param p1, "txBad"    # J

    #@0
    .prologue
    .line 147
    iput-wide p1, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    #@2
    .line 146
    return-void
.end method

.method public setTxGood(J)V
    .locals 1
    .param p1, "txGood"    # J

    #@0
    .prologue
    .line 132
    iput-wide p1, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    #@2
    .line 131
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    #@0
    .prologue
    .line 87
    iput p1, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    #@2
    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 46
    const/4 v0, 0x2

    #@1
    invoke-super {p0, p1, p2, v0}, Landroid/net/LinkQualityInfo;->writeToParcel(Landroid/os/Parcel;II)V

    #@4
    .line 48
    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mType:I

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 49
    iget v0, p0, Landroid/net/WifiLinkQualityInfo;->mRssi:I

    #@b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@e
    .line 50
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxGood:J

    #@10
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@13
    .line 51
    iget-wide v0, p0, Landroid/net/WifiLinkQualityInfo;->mTxBad:J

    #@15
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@18
    .line 53
    iget-object v0, p0, Landroid/net/WifiLinkQualityInfo;->mBssid:Ljava/lang/String;

    #@1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1d
    .line 45
    return-void
.end method
