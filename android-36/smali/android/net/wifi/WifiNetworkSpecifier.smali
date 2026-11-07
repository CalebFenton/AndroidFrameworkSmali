.class public final Landroid/net/wifi/WifiNetworkSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiNetworkSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiNetworkSpecifier$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiNetworkSpecifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WifiNetworkSpecifier"


# instance fields
.field public final blacklist bssidPatternMatcher:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/net/MacAddress;",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBand:I

.field private final blacklist mChannelFreqs:[I

.field private blacklist mPreferSecondarySta:Z

.field public final blacklist ssidPatternMatcher:Landroid/os/PatternMatcher;

.field public final blacklist wifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 787
    new-instance v0, Landroid/net/wifi/WifiNetworkSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiNetworkSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 741
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 742
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "Use the builder to create an instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Landroid/os/PatternMatcher;Landroid/util/Pair;ILandroid/net/wifi/WifiConfiguration;[IZ)V
    .registers 7
    .param p1, "ssidPatternMatcher"    # Landroid/os/PatternMatcher;
    .param p3, "band"    # I
    .param p4, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p5, "channelFreqs"    # [I
    .param p6, "preferSecondarySta"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/PatternMatcher;",
            "Landroid/util/Pair<",
            "Landroid/net/MacAddress;",
            "Landroid/net/MacAddress;",
            ">;I",
            "Landroid/net/wifi/WifiConfiguration;",
            "[IZ)V"
        }
    .end annotation

    .line 751
    .local p2, "bssidPatternMatcher":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/MacAddress;Landroid/net/MacAddress;>;"
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 752
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    invoke-static {p2}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    invoke-static {p4}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    .line 757
    iput-object p2, p0, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    .line 758
    iput p3, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    .line 759
    iput-object p4, p0, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 760
    iput-object p5, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mChannelFreqs:[I

    .line 761
    iput-boolean p6, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mPreferSecondarySta:Z

    .line 762
    return-void
.end method

.method public static blacklist getBand(I)I
    .registers 2
    .param p0, "freqMHz"    # I

    .line 75
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    const/4 v0, 0x1

    return v0

    .line 77
    :cond_8
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 78
    const/4 v0, 0x2

    return v0

    .line 79
    :cond_10
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 80
    const/16 v0, 0x8

    return v0

    .line 81
    :cond_19
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is60GHz(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 82
    const/16 v0, 0x10

    return v0

    .line 84
    :cond_22
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist validateBand(I)Z
    .registers 2
    .param p0, "band"    # I

    .line 110
    sparse-switch p0, :sswitch_data_8

    .line 120
    const/4 v0, 0x0

    return v0

    .line 118
    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        -0x1 -> :sswitch_5
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x8 -> :sswitch_5
        0x10 -> :sswitch_5
        0x20000000 -> :sswitch_5
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method public static blacklist validateChannelFrequencyInMhz([I)Z
    .registers 7
    .param p0, "channels"    # [I

    .line 92
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 93
    return v0

    .line 95
    :cond_4
    array-length v1, p0

    move v2, v0

    :goto_6
    if-ge v2, v1, :cond_15

    aget v3, p0, v2

    .line 96
    .local v3, "channel":I
    invoke-static {v3}, Landroid/net/wifi/ScanResult;->convertFrequencyMhzToChannelIfSupported(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_12

    .line 97
    return v0

    .line 95
    .end local v3    # "channel":I
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 100
    :cond_15
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 3
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .line 874
    instance-of v0, p1, Landroid/net/wifi/WifiNetworkAgentSpecifier;

    if-eqz v0, :cond_c

    .line 875
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/WifiNetworkAgentSpecifier;

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiNetworkAgentSpecifier;->satisfiesNetworkSpecifier(Landroid/net/wifi/WifiNetworkSpecifier;)Z

    move-result v0

    return v0

    .line 879
    :cond_c
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 812
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 836
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 837
    return v0

    .line 839
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/WifiNetworkSpecifier;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 840
    return v2

    .line 842
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/WifiNetworkSpecifier;

    .line 843
    .local v1, "lhs":Landroid/net/wifi/WifiNetworkSpecifier;
    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    .line 844
    invoke-virtual {v4}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 843
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    .line 845
    invoke-virtual {v3}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    .line 846
    invoke-virtual {v4}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 845
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    .line 847
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    iget v3, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    iget v4, v1, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    if-ne v3, v4, :cond_68

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 850
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mChannelFreqs:[I

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkSpecifier;->mChannelFreqs:[I

    .line 852
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_68

    iget-boolean v3, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mPreferSecondarySta:Z

    iget-boolean v4, v1, Landroid/net/wifi/WifiNetworkSpecifier;->mPreferSecondarySta:Z

    if-ne v3, v4, :cond_68

    goto :goto_69

    :cond_68
    move v0, v2

    .line 843
    :goto_69
    return v0
.end method

.method public whitelist getBand()I
    .registers 2

    .line 768
    iget v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    return v0
.end method

.method public whitelist getPreferredChannelFrequenciesMhz()[I
    .registers 2

    .line 776
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mChannelFreqs:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 828
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    .line 829
    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v0}, Landroid/os/PatternMatcher;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    iget v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    .line 830
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mChannelFreqs:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mPreferSecondarySta:Z

    .line 831
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 828
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public greylist isPreferSecondarySta()Z
    .registers 2

    .line 784
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mPreferSecondarySta:Z

    return v0
.end method

.method public whitelist redact()Landroid/net/NetworkSpecifier;
    .registers 3

    .line 886
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    .line 888
    :cond_7
    new-instance v0, Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;-><init>()V

    iget v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->setBand(I)Landroid/net/wifi/WifiNetworkSpecifier$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiNetworkSpecifier$Builder;->build()Landroid/net/wifi/WifiNetworkSpecifier;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    const-string v1, "WifiNetworkSpecifier ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 860
    const-string v1, ", SSID Match pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 861
    const-string v1, ", BSSID Match pattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 862
    const-string v1, ", SSID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 863
    const-string v1, ", BSSID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 864
    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mChannelFreqs:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 865
    const-string v1, ", band="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 866
    const-string v1, ", preferSecondarySta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mPreferSecondarySta:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 867
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 868
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 858
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 817
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 818
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 819
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 820
    iget v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 822
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mChannelFreqs:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 823
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkSpecifier;->mPreferSecondarySta:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 824
    return-void
.end method
