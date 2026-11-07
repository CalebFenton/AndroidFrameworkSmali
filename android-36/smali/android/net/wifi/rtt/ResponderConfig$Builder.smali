.class public final Landroid/net/wifi/rtt/ResponderConfig$Builder;
.super Ljava/lang/Object;
.source "ResponderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/rtt/ResponderConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCenterFreq0:I

.field private blacklist mCenterFreq1:I

.field private blacklist mChannelWidth:I

.field private blacklist mFrequency:I

.field private blacklist mMacAddress:Landroid/net/MacAddress;

.field private blacklist mNtbMaxMeasurementTime:J

.field private blacklist mNtbMinMeasurementTime:J

.field private blacklist mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

.field private blacklist mPreamble:I

.field private blacklist mResponderType:I

.field private blacklist mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

.field private blacklist mSupports80211Mc:Z

.field private blacklist mSupports80211azNtb:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCenterFreq0(Landroid/net/wifi/rtt/ResponderConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mCenterFreq0:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCenterFreq1(Landroid/net/wifi/rtt/ResponderConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mCenterFreq1:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannelWidth(Landroid/net/wifi/rtt/ResponderConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mChannelWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrequency(Landroid/net/wifi/rtt/ResponderConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mFrequency:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMacAddress(Landroid/net/wifi/rtt/ResponderConfig$Builder;)Landroid/net/MacAddress;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNtbMaxMeasurementTime(Landroid/net/wifi/rtt/ResponderConfig$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mNtbMaxMeasurementTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNtbMinMeasurementTime(Landroid/net/wifi/rtt/ResponderConfig$Builder;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mNtbMinMeasurementTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPeerHandle(Landroid/net/wifi/rtt/ResponderConfig$Builder;)Landroid/net/wifi/aware/PeerHandle;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreamble(Landroid/net/wifi/rtt/ResponderConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mPreamble:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponderType(Landroid/net/wifi/rtt/ResponderConfig$Builder;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mResponderType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecureRangingConfig(Landroid/net/wifi/rtt/ResponderConfig$Builder;)Landroid/net/wifi/rtt/SecureRangingConfig;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupports80211Mc(Landroid/net/wifi/rtt/ResponderConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mSupports80211Mc:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupports80211azNtb(Landroid/net/wifi/rtt/ResponderConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mSupports80211azNtb:Z

    return p0
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 741
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mResponderType:I

    .line 742
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mSupports80211Mc:Z

    .line 743
    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mSupports80211azNtb:Z

    .line 744
    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mChannelWidth:I

    .line 745
    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mFrequency:I

    .line 746
    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mCenterFreq0:I

    .line 747
    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mCenterFreq1:I

    .line 748
    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mPreamble:I

    .line 749
    const-wide/32 v0, 0x3d090

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mNtbMinMeasurementTime:J

    .line 750
    const-wide/32 v0, 0xe4e1c0

    iput-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mNtbMaxMeasurementTime:J

    .line 751
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/rtt/ResponderConfig;
    .registers 3

    .line 990
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mMacAddress:Landroid/net/MacAddress;

    if-nez v0, :cond_8

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-eqz v0, :cond_11

    :cond_8
    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mMacAddress:Landroid/net/MacAddress;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    if-nez v0, :cond_11

    goto :goto_19

    .line 992
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ResponderConfig - must specify a MAC address or peer handle but not both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_19
    :goto_19
    iget v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mResponderType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 998
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mSupports80211Mc:Z

    .line 999
    const/16 v1, 0x985

    iput v1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mFrequency:I

    .line 1000
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mChannelWidth:I

    .line 1001
    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mPreamble:I

    .line 1003
    :cond_2a
    new-instance v0, Landroid/net/wifi/rtt/ResponderConfig;

    invoke-direct {v0, p0}, Landroid/net/wifi/rtt/ResponderConfig;-><init>(Landroid/net/wifi/rtt/ResponderConfig$Builder;)V

    return-object v0
.end method

.method public whitelist set80211azNtbSupported(Z)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 2
    .param p1, "supports80211azNtb"    # Z

    .line 808
    iput-boolean p1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mSupports80211azNtb:Z

    .line 809
    return-object p0
.end method

.method public whitelist set80211mcSupported(Z)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 2
    .param p1, "supports80211mc"    # Z

    .line 791
    iput-boolean p1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mSupports80211Mc:Z

    .line 792
    return-object p0
.end method

.method public whitelist setCenterFreq0Mhz(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 2
    .param p1, "centerFreq0"    # I

    .line 857
    iput p1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mCenterFreq0:I

    .line 858
    return-object p0
.end method

.method public whitelist setCenterFreq1Mhz(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 2
    .param p1, "centerFreq1"    # I

    .line 875
    iput p1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mCenterFreq1:I

    .line 876
    return-object p0
.end method

.method public whitelist setChannelWidth(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 3
    .param p1, "channelWidth"    # I

    .line 821
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig;->translateFromScanResultToLocalChannelWidth(I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mChannelWidth:I

    .line 822
    return-object p0
.end method

.method public whitelist setFrequencyMhz(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 2
    .param p1, "frequency"    # I

    .line 839
    iput p1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mFrequency:I

    .line 840
    return-object p0
.end method

.method public whitelist setMacAddress(Landroid/net/MacAddress;)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 2
    .param p1, "macAddress"    # Landroid/net/MacAddress;

    .line 763
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mMacAddress:Landroid/net/MacAddress;

    .line 764
    return-object p0
.end method

.method public blacklist setNtbMaxTimeBetweenMeasurementsMicros(J)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 7
    .param p1, "ntbMaxMeasurementTime"    # J

    .line 945
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mNtbMaxMeasurementTime:J

    const-wide/16 v2, 0x2710

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_27

    .line 948
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mNtbMaxMeasurementTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1f

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mNtbMaxMeasurementTime:J

    const-wide v2, 0x138800000L

    cmp-long v0, v0, v2

    if-gez v0, :cond_1f

    .line 952
    iput-wide p1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mNtbMaxMeasurementTime:J

    .line 953
    return-object p0

    .line 949
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should be a non-zero number less than 5242880000 microseconds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 946
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should be a multiple of 10000 microseconds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setNtbMinTimeBetweenMeasurementsMicros(J)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 9
    .param p1, "ntbMinMeasurementTime"    # J

    .line 921
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mNtbMinMeasurementTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mNtbMinMeasurementTime:J

    const-wide/32 v4, 0x19000000

    cmp-long v0, v0, v4

    if-gez v0, :cond_25

    .line 925
    iget-wide v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mNtbMinMeasurementTime:J

    const-wide/16 v4, 0x64

    rem-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1d

    .line 928
    iput-wide p1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mNtbMinMeasurementTime:J

    .line 929
    return-object p0

    .line 926
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should be a multiple of 100 microseconds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Should be a non-zero number less than 419430400 microseconds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPeerHandle(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 2
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;

    .line 777
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mPeerHandle:Landroid/net/wifi/aware/PeerHandle;

    .line 778
    return-object p0
.end method

.method public whitelist setPreamble(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 3
    .param p1, "preamble"    # I

    .line 888
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig;->translateFromScanResultToLocalPreamble(I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mPreamble:I

    .line 889
    return-object p0
.end method

.method public whitelist setResponderType(I)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 5
    .param p1, "responderType"    # I

    .line 902
    invoke-static {p1}, Landroid/net/wifi/rtt/ResponderConfig;->-$$Nest$smisResponderTypeSupported(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 905
    iput p1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mResponderType:I

    .line 906
    return-object p0

    .line 903
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid responder type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSecureRangingConfig(Landroid/net/wifi/rtt/SecureRangingConfig;)Landroid/net/wifi/rtt/ResponderConfig$Builder;
    .registers 3
    .param p1, "secureRangingConfig"    # Landroid/net/wifi/rtt/SecureRangingConfig;

    .line 979
    const-string v0, "secureRangingConfig cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 980
    iput-object p1, p0, Landroid/net/wifi/rtt/ResponderConfig$Builder;->mSecureRangingConfig:Landroid/net/wifi/rtt/SecureRangingConfig;

    .line 981
    return-object p0
.end method
