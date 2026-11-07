.class public final Landroid/net/wifi/WifiNetworkAgentSpecifier;
.super Landroid/net/NetworkSpecifier;
.source "WifiNetworkAgentSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiNetworkAgentSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBand:I

.field private final blacklist mMatchLocalOnlySpecifiers:Z

.field private final blacklist mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/net/wifi/WifiNetworkAgentSpecifier$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkAgentSpecifier$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/WifiConfiguration;IZ)V
    .registers 4
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "band"    # I
    .param p3, "matchLocalOnlySpecifiers"    # Z

    .line 63
    invoke-direct {p0}, Landroid/net/NetworkSpecifier;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 67
    iput p2, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    .line 68
    iput-boolean p3, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    .line 69
    return-void
.end method


# virtual methods
.method public whitelist canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z
    .registers 4
    .param p1, "other"    # Landroid/net/NetworkSpecifier;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 106
    return v0

    .line 109
    :cond_4
    if-eqz p1, :cond_1c

    instance-of v1, p1, Landroid/net/MatchAllNetworkSpecifier;

    if-eqz v1, :cond_b

    goto :goto_1c

    .line 112
    :cond_b
    instance-of v0, p1, Landroid/net/wifi/WifiNetworkSpecifier;

    if-eqz v0, :cond_17

    .line 113
    move-object v0, p1

    check-cast v0, Landroid/net/wifi/WifiNetworkSpecifier;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiNetworkAgentSpecifier;->satisfiesNetworkSpecifier(Landroid/net/wifi/WifiNetworkSpecifier;)Z

    move-result v0

    return v0

    .line 115
    :cond_17
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkAgentSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 110
    :cond_1c
    :goto_1c
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 180
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 181
    return v0

    .line 183
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/WifiNetworkAgentSpecifier;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 184
    return v2

    .line 186
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/WifiNetworkAgentSpecifier;

    .line 187
    .local v1, "lhs":Landroid/net/wifi/WifiNetworkAgentSpecifier;
    iget-object v3, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 188
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v4, v1, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 189
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    iget v3, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    iget v4, v1, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    if-ne v3, v4, :cond_44

    iget-boolean v3, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    iget-boolean v4, v1, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    if-ne v3, v4, :cond_44

    goto :goto_45

    :cond_44
    move v0, v2

    .line 187
    :goto_45
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 170
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget v3, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    .line 174
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    .line 175
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 170
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist redact()Landroid/net/NetworkSpecifier;
    .registers 2

    .line 209
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist satisfiesNetworkSpecifier(Landroid/net/wifi/WifiNetworkSpecifier;)Z
    .registers 11
    .param p1, "ns"    # Landroid/net/wifi/WifiNetworkSpecifier;

    .line 126
    invoke-static {p1}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p1, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p1, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p1, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {v0}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_69

    .line 136
    iget v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    const/4 v3, 0x2

    const/high16 v4, 0x20000000

    if-ne v0, v4, :cond_47

    .line 137
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->getBand()I

    move-result v0

    if-eq v0, v4, :cond_45

    .line 138
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->getBand()I

    move-result v0

    if-ne v0, v3, :cond_43

    goto :goto_45

    :cond_43
    move v1, v2

    goto :goto_46

    :cond_45
    :goto_45
    nop

    .line 137
    :goto_46
    return v1

    .line 139
    :cond_47
    iget v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_5e

    .line 140
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->getBand()I

    move-result v0

    if-eq v0, v4, :cond_5c

    .line 141
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->getBand()I

    move-result v0

    if-ne v0, v3, :cond_5a

    goto :goto_5c

    :cond_5a
    move v1, v2

    goto :goto_5d

    :cond_5c
    :goto_5c
    nop

    .line 140
    :goto_5d
    return v1

    .line 143
    :cond_5e
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->getBand()I

    move-result v0

    iget v3, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    if-ne v0, v3, :cond_67

    goto :goto_68

    :cond_67
    move v1, v2

    :goto_68
    return v1

    .line 146
    :cond_69
    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->getBand()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_79

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSpecifier;->getBand()I

    move-result v0

    iget v3, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    if-eq v0, v3, :cond_79

    .line 147
    return v2

    .line 149
    :cond_79
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 150
    .local v0, "ssidWithQuotes":Ljava/lang/String;
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8d

    move v3, v1

    goto :goto_8e

    :cond_8d
    move v3, v2

    :goto_8e
    invoke-static {v3}, Lcom/android/wifi/x/com/android/internal/util/Preconditions;->checkState(Z)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "ssidWithoutQuotes":Ljava/lang/String;
    iget-object v4, p1, Landroid/net/wifi/WifiNetworkSpecifier;->ssidPatternMatcher:Landroid/os/PatternMatcher;

    invoke-virtual {v4, v3}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a3

    .line 153
    return v2

    .line 155
    :cond_a3
    iget-object v4, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v4

    .line 156
    .local v4, "bssid":Landroid/net/MacAddress;
    iget-object v5, p1, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/net/MacAddress;

    .line 157
    .local v5, "matchBaseAddress":Landroid/net/MacAddress;
    iget-object v6, p1, Landroid/net/wifi/WifiNetworkSpecifier;->bssidPatternMatcher:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/net/MacAddress;

    .line 158
    .local v6, "matchMask":Landroid/net/MacAddress;
    invoke-virtual {v4, v5, v6}, Landroid/net/MacAddress;->matches(Landroid/net/MacAddress;Landroid/net/MacAddress;)Z

    move-result v7

    if-nez v7, :cond_be

    .line 159
    return v2

    .line 161
    :cond_be
    iget-object v7, p1, Landroid/net/wifi/WifiNetworkSpecifier;->wifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iget-object v8, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_cd

    .line 163
    return v2

    .line 165
    :cond_cd
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiNetworkAgentSpecifier ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "WifiConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    const-string v2, ", SSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 200
    const-string v2, ", BSSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    const-string v2, ", band="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 202
    const-string v2, ", mMatchLocalOnlySpecifiers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget-object v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-boolean v0, p0, Landroid/net/wifi/WifiNetworkAgentSpecifier;->mMatchLocalOnlySpecifiers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 101
    return-void
.end method
