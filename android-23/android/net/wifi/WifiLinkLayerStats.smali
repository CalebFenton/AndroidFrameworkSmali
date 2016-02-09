.class public Landroid/net/wifi/WifiLinkLayerStats;
.super Ljava/lang/Object;
.source "WifiLinkLayerStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiLinkLayerStats$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiLinkLayerStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiLinkLayerStats"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public beacon_rx:I

.field public lostmpdu_be:J

.field public lostmpdu_bk:J

.field public lostmpdu_vi:J

.field public lostmpdu_vo:J

.field public on_time:I

.field public on_time_scan:I

.field public retries_be:J

.field public retries_bk:J

.field public retries_vi:J

.field public retries_vo:J

.field public rssi_mgmt:I

.field public rx_time:I

.field public rxmpdu_be:J

.field public rxmpdu_bk:J

.field public rxmpdu_vi:J

.field public rxmpdu_vo:J

.field public status:I

.field public tx_time:I

.field public txmpdu_be:J

.field public txmpdu_bk:J

.field public txmpdu_vi:J

.field public txmpdu_vo:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 188
    new-instance v0, Landroid/net/wifi/WifiLinkLayerStats$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiLinkLayerStats$1;-><init>()V

    #@5
    .line 187
    sput-object v0, Landroid/net/wifi/WifiLinkLayerStats;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 152
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getPrintableSsid()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    const/16 v4, 0x22

    #@5
    .line 157
    iget-object v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@7
    if-nez v2, :cond_0

    #@9
    const-string/jumbo v2, ""

    #@c
    return-object v2

    #@d
    .line 158
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@12
    move-result v0

    #@13
    .line 159
    .local v0, "length":I
    if-le v0, v7, :cond_1

    #@15
    iget-object v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v2

    #@1b
    if-ne v2, v4, :cond_1

    #@1d
    iget-object v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@1f
    add-int/lit8 v3, v0, -0x1

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v2

    #@25
    if-ne v2, v4, :cond_1

    #@27
    .line 160
    iget-object v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@29
    add-int/lit8 v3, v0, -0x1

    #@2b
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    return-object v2

    #@30
    .line 167
    :cond_1
    const/4 v2, 0x3

    #@31
    if-le v0, v2, :cond_2

    #@33
    iget-object v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@35
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v2

    #@39
    const/16 v3, 0x50

    #@3b
    if-ne v2, v3, :cond_2

    #@3d
    iget-object v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@3f
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v2

    #@43
    if-ne v2, v4, :cond_2

    #@45
    .line 168
    iget-object v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@47
    add-int/lit8 v3, v0, -0x1

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@4c
    move-result v2

    #@4d
    if-ne v2, v4, :cond_2

    #@4f
    .line 170
    iget-object v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@51
    add-int/lit8 v3, v0, -0x1

    #@53
    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    .line 169
    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@5a
    move-result-object v1

    #@5b
    .line 171
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    return-object v2

    #@60
    .line 173
    .end local v1    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@62
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/16 v4, 0xa

    #@2
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 116
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, " WifiLinkLayerStats: "

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@11
    .line 118
    iget-object v1, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 119
    const-string/jumbo v1, " SSID: "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 121
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiLinkLayerStats;->BSSID:Ljava/lang/String;

    #@27
    if-eqz v1, :cond_1

    #@29
    .line 122
    const-string/jumbo v1, " BSSID: "

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    iget-object v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->BSSID:Ljava/lang/String;

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    .line 125
    :cond_1
    const-string/jumbo v1, " my bss beacon rx: "

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    iget v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->beacon_rx:I

    #@42
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d
    .line 126
    const-string/jumbo v1, " RSSI mgmt: "

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    iget v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->rssi_mgmt:I

    #@56
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@61
    .line 127
    const-string/jumbo v1, " BE : "

    #@64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v1

    #@68
    const-string/jumbo v2, " rx="

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v1

    #@6f
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_be:J

    #@71
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    .line 128
    const-string/jumbo v2, " tx="

    #@7c
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v1

    #@80
    .line 128
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_be:J

    #@82
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@85
    move-result-object v2

    #@86
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v1

    #@8a
    .line 129
    const-string/jumbo v2, " lost="

    #@8d
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    .line 129
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_be:J

    #@93
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@96
    move-result-object v2

    #@97
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    .line 130
    const-string/jumbo v2, " retries="

    #@9e
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    .line 130
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->retries_be:J

    #@a4
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@a7
    move-result-object v2

    #@a8
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v1

    #@ac
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@af
    .line 131
    const-string/jumbo v1, " BK : "

    #@b2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    const-string/jumbo v2, " rx="

    #@b9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v1

    #@bd
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_bk:J

    #@bf
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@c2
    move-result-object v2

    #@c3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v1

    #@c7
    .line 132
    const-string/jumbo v2, " tx="

    #@ca
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v1

    #@ce
    .line 132
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_bk:J

    #@d0
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@d3
    move-result-object v2

    #@d4
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v1

    #@d8
    .line 133
    const-string/jumbo v2, " lost="

    #@db
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v1

    #@df
    .line 133
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_bk:J

    #@e1
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@e4
    move-result-object v2

    #@e5
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v1

    #@e9
    .line 134
    const-string/jumbo v2, " retries="

    #@ec
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v1

    #@f0
    .line 134
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->retries_bk:J

    #@f2
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@f5
    move-result-object v2

    #@f6
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v1

    #@fa
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@fd
    .line 135
    const-string/jumbo v1, " VI : "

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v1

    #@104
    const-string/jumbo v2, " rx="

    #@107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v1

    #@10b
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vi:J

    #@10d
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@110
    move-result-object v2

    #@111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v1

    #@115
    .line 136
    const-string/jumbo v2, " tx="

    #@118
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v1

    #@11c
    .line 136
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vi:J

    #@11e
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@121
    move-result-object v2

    #@122
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v1

    #@126
    .line 137
    const-string/jumbo v2, " lost="

    #@129
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v1

    #@12d
    .line 137
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vi:J

    #@12f
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@132
    move-result-object v2

    #@133
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v1

    #@137
    .line 138
    const-string/jumbo v2, " retries="

    #@13a
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v1

    #@13e
    .line 138
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->retries_vi:J

    #@140
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@143
    move-result-object v2

    #@144
    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v1

    #@148
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14b
    .line 139
    const-string/jumbo v1, " VO : "

    #@14e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v1

    #@152
    const-string/jumbo v2, " rx="

    #@155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@158
    move-result-object v1

    #@159
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->rxmpdu_vo:J

    #@15b
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@15e
    move-result-object v2

    #@15f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v1

    #@163
    .line 140
    const-string/jumbo v2, " tx="

    #@166
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v1

    #@16a
    .line 140
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->txmpdu_vo:J

    #@16c
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@16f
    move-result-object v2

    #@170
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v1

    #@174
    .line 141
    const-string/jumbo v2, " lost="

    #@177
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17a
    move-result-object v1

    #@17b
    .line 141
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->lostmpdu_vo:J

    #@17d
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@180
    move-result-object v2

    #@181
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@184
    move-result-object v1

    #@185
    .line 142
    const-string/jumbo v2, " retries="

    #@188
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18b
    move-result-object v1

    #@18c
    .line 142
    iget-wide v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->retries_vo:J

    #@18e
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@191
    move-result-object v2

    #@192
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v1

    #@196
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@199
    .line 143
    const-string/jumbo v1, " on_time : "

    #@19c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    move-result-object v1

    #@1a0
    iget v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    #@1a2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1a5
    move-result-object v2

    #@1a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v1

    #@1aa
    .line 144
    const-string/jumbo v2, " tx_time="

    #@1ad
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v1

    #@1b1
    .line 144
    iget v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@1b3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1b6
    move-result-object v2

    #@1b7
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v1

    #@1bb
    .line 145
    const-string/jumbo v2, " rx_time="

    #@1be
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v1

    #@1c2
    .line 145
    iget v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@1c4
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1c7
    move-result-object v2

    #@1c8
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cb
    move-result-object v1

    #@1cc
    .line 146
    const-string/jumbo v2, " scan_time="

    #@1cf
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    move-result-object v1

    #@1d3
    .line 146
    iget v2, p0, Landroid/net/wifi/WifiLinkLayerStats;->on_time_scan:I

    #@1d5
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1d8
    move-result-object v2

    #@1d9
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1dc
    move-result-object v1

    #@1dd
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e0
    .line 147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e3
    move-result-object v1

    #@1e4
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Landroid/net/wifi/WifiLinkLayerStats;->SSID:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 179
    iget-object v0, p0, Landroid/net/wifi/WifiLinkLayerStats;->BSSID:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 180
    iget v0, p0, Landroid/net/wifi/WifiLinkLayerStats;->on_time:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 181
    iget v0, p0, Landroid/net/wifi/WifiLinkLayerStats;->tx_time:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 182
    iget v0, p0, Landroid/net/wifi/WifiLinkLayerStats;->rx_time:I

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@19
    .line 183
    iget v0, p0, Landroid/net/wifi/WifiLinkLayerStats;->on_time_scan:I

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 177
    return-void
.end method
