.class public final Landroid/net/wifi/ScanResult$Builder;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAnqpDomainId:I

.field private blacklist mBssid:Ljava/lang/String;

.field private blacklist mCaps:Ljava/lang/String;

.field private blacklist mCenterFreq0:I

.field private blacklist mCenterFreq1:I

.field private blacklist mChannelWidth:I

.field private blacklist mDistanceCm:I

.field private blacklist mDistanceSdCm:I

.field private blacklist mFrequency:I

.field private blacklist mHessid:J

.field private blacklist mIs80211McRTTResponder:Z

.field private blacklist mIs80211azNtbRTTResponder:Z

.field private blacklist mIsRangingFrameProtectionRequired:Z

.field private blacklist mIsSecureHeLtfSupported:Z

.field private blacklist mIsTwtResponder:Z

.field private blacklist mOsuProviders:[B

.field private blacklist mRssi:I

.field private blacklist mTsf:J

.field private blacklist mWifiSsid:Landroid/net/wifi/WifiSsid;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAnqpDomainId(Landroid/net/wifi/ScanResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/ScanResult$Builder;->mAnqpDomainId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBssid(Landroid/net/wifi/ScanResult$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/ScanResult$Builder;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaps(Landroid/net/wifi/ScanResult$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/ScanResult$Builder;->mCaps:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCenterFreq0(Landroid/net/wifi/ScanResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/ScanResult$Builder;->mCenterFreq0:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCenterFreq1(Landroid/net/wifi/ScanResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/ScanResult$Builder;->mCenterFreq1:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelWidth(Landroid/net/wifi/ScanResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/ScanResult$Builder;->mChannelWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDistanceCm(Landroid/net/wifi/ScanResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/ScanResult$Builder;->mDistanceCm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDistanceSdCm(Landroid/net/wifi/ScanResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/ScanResult$Builder;->mDistanceSdCm:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrequency(Landroid/net/wifi/ScanResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/ScanResult$Builder;->mFrequency:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHessid(Landroid/net/wifi/ScanResult$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/ScanResult$Builder;->mHessid:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIs80211McRTTResponder(Landroid/net/wifi/ScanResult$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/ScanResult$Builder;->mIs80211McRTTResponder:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIs80211azNtbRTTResponder(Landroid/net/wifi/ScanResult$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/ScanResult$Builder;->mIs80211azNtbRTTResponder:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRangingFrameProtectionRequired(Landroid/net/wifi/ScanResult$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/ScanResult$Builder;->mIsRangingFrameProtectionRequired:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsSecureHeLtfSupported(Landroid/net/wifi/ScanResult$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/ScanResult$Builder;->mIsSecureHeLtfSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsTwtResponder(Landroid/net/wifi/ScanResult$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/ScanResult$Builder;->mIsTwtResponder:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOsuProviders(Landroid/net/wifi/ScanResult$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/ScanResult$Builder;->mOsuProviders:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRssi(Landroid/net/wifi/ScanResult$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/ScanResult$Builder;->mRssi:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTsf(Landroid/net/wifi/ScanResult$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/ScanResult$Builder;->mTsf:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiSsid(Landroid/net/wifi/ScanResult$Builder;)Landroid/net/wifi/WifiSsid;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/ScanResult$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 5

    .line 1641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1508
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/ScanResult$Builder;->mHessid:J

    .line 1509
    const/4 v2, 0x0

    iput v2, p0, Landroid/net/wifi/ScanResult$Builder;->mAnqpDomainId:I

    .line 1510
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/net/wifi/ScanResult$Builder;->mOsuProviders:[B

    .line 1511
    iput-object v3, p0, Landroid/net/wifi/ScanResult$Builder;->mCaps:Ljava/lang/String;

    .line 1512
    const/4 v3, -0x1

    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mRssi:I

    .line 1513
    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mFrequency:I

    .line 1514
    iput-wide v0, p0, Landroid/net/wifi/ScanResult$Builder;->mTsf:J

    .line 1515
    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mDistanceCm:I

    .line 1516
    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mDistanceSdCm:I

    .line 1517
    iput v2, p0, Landroid/net/wifi/ScanResult$Builder;->mChannelWidth:I

    .line 1518
    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mCenterFreq0:I

    .line 1519
    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mCenterFreq1:I

    .line 1520
    iput-boolean v2, p0, Landroid/net/wifi/ScanResult$Builder;->mIs80211McRTTResponder:Z

    .line 1521
    iput-boolean v2, p0, Landroid/net/wifi/ScanResult$Builder;->mIs80211azNtbRTTResponder:Z

    .line 1522
    iput-boolean v2, p0, Landroid/net/wifi/ScanResult$Builder;->mIsTwtResponder:Z

    .line 1523
    iput-boolean v2, p0, Landroid/net/wifi/ScanResult$Builder;->mIsSecureHeLtfSupported:Z

    .line 1524
    iput-boolean v2, p0, Landroid/net/wifi/ScanResult$Builder;->mIsRangingFrameProtectionRequired:Z

    .line 1643
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;)V
    .registers 7
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "bssid"    # Ljava/lang/String;

    .line 1632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1508
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/ScanResult$Builder;->mHessid:J

    .line 1509
    const/4 v2, 0x0

    iput v2, p0, Landroid/net/wifi/ScanResult$Builder;->mAnqpDomainId:I

    .line 1510
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/net/wifi/ScanResult$Builder;->mOsuProviders:[B

    .line 1511
    iput-object v3, p0, Landroid/net/wifi/ScanResult$Builder;->mCaps:Ljava/lang/String;

    .line 1512
    const/4 v3, -0x1

    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mRssi:I

    .line 1513
    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mFrequency:I

    .line 1514
    iput-wide v0, p0, Landroid/net/wifi/ScanResult$Builder;->mTsf:J

    .line 1515
    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mDistanceCm:I

    .line 1516
    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mDistanceSdCm:I

    .line 1517
    iput v2, p0, Landroid/net/wifi/ScanResult$Builder;->mChannelWidth:I

    .line 1518
    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mCenterFreq0:I

    .line 1519
    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mCenterFreq1:I

    .line 1520
    iput-boolean v2, p0, Landroid/net/wifi/ScanResult$Builder;->mIs80211McRTTResponder:Z

    .line 1521
    iput-boolean v2, p0, Landroid/net/wifi/ScanResult$Builder;->mIs80211azNtbRTTResponder:Z

    .line 1522
    iput-boolean v2, p0, Landroid/net/wifi/ScanResult$Builder;->mIsTwtResponder:Z

    .line 1523
    iput-boolean v2, p0, Landroid/net/wifi/ScanResult$Builder;->mIsSecureHeLtfSupported:Z

    .line 1524
    iput-boolean v2, p0, Landroid/net/wifi/ScanResult$Builder;->mIsRangingFrameProtectionRequired:Z

    .line 1633
    iput-object p1, p0, Landroid/net/wifi/ScanResult$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1634
    iput-object p2, p0, Landroid/net/wifi/ScanResult$Builder;->mBssid:Ljava/lang/String;

    .line 1635
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/wifi/ScanResult;
    .registers 3

    .line 1686
    new-instance v0, Landroid/net/wifi/ScanResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult$Builder;Landroid/net/wifi/ScanResult-IA;)V

    return-object v0
.end method

.method public blacklist clear()V
    .registers 5

    .line 1665
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/ScanResult$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1666
    iput-object v0, p0, Landroid/net/wifi/ScanResult$Builder;->mBssid:Ljava/lang/String;

    .line 1667
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/net/wifi/ScanResult$Builder;->mHessid:J

    .line 1668
    const/4 v3, 0x0

    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mAnqpDomainId:I

    .line 1669
    iput-object v0, p0, Landroid/net/wifi/ScanResult$Builder;->mOsuProviders:[B

    .line 1670
    iput-object v0, p0, Landroid/net/wifi/ScanResult$Builder;->mCaps:Ljava/lang/String;

    .line 1671
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/ScanResult$Builder;->mRssi:I

    .line 1672
    iput v0, p0, Landroid/net/wifi/ScanResult$Builder;->mFrequency:I

    .line 1673
    iput-wide v1, p0, Landroid/net/wifi/ScanResult$Builder;->mTsf:J

    .line 1674
    iput v0, p0, Landroid/net/wifi/ScanResult$Builder;->mDistanceCm:I

    .line 1675
    iput v0, p0, Landroid/net/wifi/ScanResult$Builder;->mDistanceSdCm:I

    .line 1676
    iput v3, p0, Landroid/net/wifi/ScanResult$Builder;->mChannelWidth:I

    .line 1677
    iput v0, p0, Landroid/net/wifi/ScanResult$Builder;->mCenterFreq0:I

    .line 1678
    iput v0, p0, Landroid/net/wifi/ScanResult$Builder;->mCenterFreq1:I

    .line 1679
    iput-boolean v3, p0, Landroid/net/wifi/ScanResult$Builder;->mIs80211McRTTResponder:Z

    .line 1680
    iput-boolean v3, p0, Landroid/net/wifi/ScanResult$Builder;->mIs80211azNtbRTTResponder:Z

    .line 1681
    iput-boolean v3, p0, Landroid/net/wifi/ScanResult$Builder;->mIsTwtResponder:Z

    .line 1682
    return-void
.end method

.method public blacklist setAnqpDomainId(I)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "anqpDomainId"    # I

    .line 1543
    iput p1, p0, Landroid/net/wifi/ScanResult$Builder;->mAnqpDomainId:I

    .line 1544
    return-object p0
.end method

.method public blacklist setBssid(Ljava/lang/String;)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "bssid"    # Ljava/lang/String;

    .line 1657
    iput-object p1, p0, Landroid/net/wifi/ScanResult$Builder;->mBssid:Ljava/lang/String;

    .line 1658
    return-object p0
.end method

.method public blacklist setCaps(Ljava/lang/String;)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "caps"    # Ljava/lang/String;

    .line 1550
    iput-object p1, p0, Landroid/net/wifi/ScanResult$Builder;->mCaps:Ljava/lang/String;

    .line 1551
    return-object p0
.end method

.method public blacklist setCenterFreq0(I)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "centerFreq0"    # I

    .line 1599
    iput p1, p0, Landroid/net/wifi/ScanResult$Builder;->mCenterFreq0:I

    .line 1600
    return-object p0
.end method

.method public blacklist setCenterFreq1(I)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "centerFreq1"    # I

    .line 1606
    iput p1, p0, Landroid/net/wifi/ScanResult$Builder;->mCenterFreq1:I

    .line 1607
    return-object p0
.end method

.method public blacklist setChannelWidth(I)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "channelWidth"    # I

    .line 1592
    iput p1, p0, Landroid/net/wifi/ScanResult$Builder;->mChannelWidth:I

    .line 1593
    return-object p0
.end method

.method public blacklist setDistanceCm(I)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "distanceCm"    # I

    .line 1578
    iput p1, p0, Landroid/net/wifi/ScanResult$Builder;->mDistanceCm:I

    .line 1579
    return-object p0
.end method

.method public blacklist setDistanceSdCm(I)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "distanceSdCm"    # I

    .line 1585
    iput p1, p0, Landroid/net/wifi/ScanResult$Builder;->mDistanceSdCm:I

    .line 1586
    return-object p0
.end method

.method public blacklist setFrequency(I)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "frequency"    # I

    .line 1564
    iput p1, p0, Landroid/net/wifi/ScanResult$Builder;->mFrequency:I

    .line 1565
    return-object p0
.end method

.method public blacklist setHessid(J)Landroid/net/wifi/ScanResult$Builder;
    .registers 3
    .param p1, "hessid"    # J

    .line 1529
    iput-wide p1, p0, Landroid/net/wifi/ScanResult$Builder;->mHessid:J

    .line 1530
    return-object p0
.end method

.method public blacklist setIs80211McRTTResponder(Z)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "is80211McRTTResponder"    # Z

    .line 1613
    iput-boolean p1, p0, Landroid/net/wifi/ScanResult$Builder;->mIs80211McRTTResponder:Z

    .line 1614
    return-object p0
.end method

.method public blacklist setIs80211azNtbRTTResponder(Z)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "is80211azNtbRTTResponder"    # Z

    .line 1620
    iput-boolean p1, p0, Landroid/net/wifi/ScanResult$Builder;->mIs80211azNtbRTTResponder:Z

    .line 1621
    return-object p0
.end method

.method public blacklist setIsTwtResponder(Z)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "isTwtResponder"    # Z

    .line 1627
    iput-boolean p1, p0, Landroid/net/wifi/ScanResult$Builder;->mIsTwtResponder:Z

    .line 1628
    return-object p0
.end method

.method public blacklist setOsuProviders([B)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "osuProviders"    # [B

    .line 1536
    iput-object p1, p0, Landroid/net/wifi/ScanResult$Builder;->mOsuProviders:[B

    .line 1537
    return-object p0
.end method

.method public blacklist setRangingFrameProtectionRequired(Z)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "required"    # Z

    .line 1697
    iput-boolean p1, p0, Landroid/net/wifi/ScanResult$Builder;->mIsRangingFrameProtectionRequired:Z

    .line 1698
    return-object p0
.end method

.method public blacklist setRssi(I)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "rssi"    # I

    .line 1557
    iput p1, p0, Landroid/net/wifi/ScanResult$Builder;->mRssi:I

    .line 1558
    return-object p0
.end method

.method public blacklist setSecureHeLtfSupported(Z)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "supported"    # Z

    .line 1691
    iput-boolean p1, p0, Landroid/net/wifi/ScanResult$Builder;->mIsSecureHeLtfSupported:Z

    .line 1692
    return-object p0
.end method

.method public blacklist setTsf(J)Landroid/net/wifi/ScanResult$Builder;
    .registers 3
    .param p1, "tsf"    # J

    .line 1571
    iput-wide p1, p0, Landroid/net/wifi/ScanResult$Builder;->mTsf:J

    .line 1572
    return-object p0
.end method

.method public blacklist setWifiSsid(Landroid/net/wifi/WifiSsid;)Landroid/net/wifi/ScanResult$Builder;
    .registers 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;

    .line 1649
    iput-object p1, p0, Landroid/net/wifi/ScanResult$Builder;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1650
    return-object p0
.end method
