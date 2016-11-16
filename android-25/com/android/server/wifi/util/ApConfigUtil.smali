.class public Lcom/android/server/wifi/util/ApConfigUtil;
.super Ljava/lang/Object;
.source "ApConfigUtil.java"


# static fields
.field public static final DEFAULT_AP_BAND:I = 0x0

.field public static final DEFAULT_AP_CHANNEL:I = 0x6

.field public static final ERROR_GENERIC:I = 0x2

.field public static final ERROR_NO_CHANNEL:I = 0x1

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ApConfigUtil"

.field private static final sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 43
    new-instance v0, Ljava/util/Random;

    #@2
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static chooseApChannel(ILjava/util/ArrayList;[I)I
    .locals 5
    .param p0, "apBand"    # I
    .param p2, "allowed5GFreqList"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;[I)I"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "allowed2GChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, -0x1

    #@1
    .line 73
    if-eqz p0, :cond_0

    #@3
    .line 74
    const/4 v1, 0x1

    #@4
    if-eq p0, v1, :cond_0

    #@6
    .line 75
    const-string/jumbo v1, "ApConfigUtil"

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "Invalid band: "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 76
    return v4

    #@21
    .line 79
    :cond_0
    if-nez p0, :cond_3

    #@23
    .line 81
    if-eqz p1, :cond_1

    #@25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_2

    #@2b
    .line 82
    :cond_1
    const-string/jumbo v1, "ApConfigUtil"

    #@2e
    const-string/jumbo v2, "2GHz allowed channel list not specified"

    #@31
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@34
    .line 84
    const/4 v1, 0x6

    #@35
    return v1

    #@36
    .line 88
    :cond_2
    sget-object v1, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    #@38
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v2

    #@3c
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    #@3f
    move-result v0

    #@40
    .line 89
    .local v0, "index":I
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v1

    #@44
    check-cast v1, Ljava/lang/Integer;

    #@46
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@49
    move-result v1

    #@4a
    return v1

    #@4b
    .line 93
    .end local v0    # "index":I
    :cond_3
    if-eqz p2, :cond_4

    #@4d
    array-length v1, p2

    #@4e
    if-lez v1, :cond_4

    #@50
    .line 96
    sget-object v1, Lcom/android/server/wifi/util/ApConfigUtil;->sRandom:Ljava/util/Random;

    #@52
    array-length v2, p2

    #@53
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    #@56
    move-result v1

    #@57
    aget v1, p2, v1

    #@59
    .line 95
    invoke-static {v1}, Lcom/android/server/wifi/util/ApConfigUtil;->convertFrequencyToChannel(I)I

    #@5c
    move-result v1

    #@5d
    return v1

    #@5e
    .line 99
    :cond_4
    const-string/jumbo v1, "ApConfigUtil"

    #@61
    const-string/jumbo v2, "No available channels on 5GHz band"

    #@64
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@67
    .line 100
    return v4
.end method

.method public static convertFrequencyToChannel(I)I
    .locals 1
    .param p0, "frequency"    # I

    #@0
    .prologue
    .line 51
    const/16 v0, 0x96c

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x9a8

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 52
    add-int/lit16 v0, p0, -0x96c

    #@a
    div-int/lit8 v0, v0, 0x5

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    return v0

    #@f
    .line 53
    :cond_0
    const/16 v0, 0x9b4

    #@11
    if-ne p0, v0, :cond_1

    #@13
    .line 54
    const/16 v0, 0xe

    #@15
    return v0

    #@16
    .line 55
    :cond_1
    const/16 v0, 0x1432

    #@18
    if-lt p0, v0, :cond_2

    #@1a
    const/16 v0, 0x16c1

    #@1c
    if-gt p0, v0, :cond_2

    #@1e
    .line 57
    add-int/lit16 v0, p0, -0x1432

    #@20
    div-int/lit8 v0, v0, 0x5

    #@22
    add-int/lit8 v0, v0, 0x22

    #@24
    return v0

    #@25
    .line 60
    :cond_2
    const/4 v0, -0x1

    #@26
    return v0
.end method

.method public static updateApChannelConfig(Lcom/android/server/wifi/WifiNative;Ljava/lang/String;Ljava/util/ArrayList;Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .param p0, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p3, "config"    # Landroid/net/wifi/WifiConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/WifiNative;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/net/wifi/WifiConfiguration;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "allowed2GChannels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x6

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 117
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isHalStarted()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 118
    iput v2, p3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@c
    .line 119
    iput v5, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@e
    .line 120
    return v2

    #@f
    .line 124
    :cond_0
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@11
    if-ne v0, v3, :cond_1

    #@13
    .line 125
    if-nez p1, :cond_1

    #@15
    .line 126
    const-string/jumbo v0, "ApConfigUtil"

    #@18
    const-string/jumbo v1, "5GHz band is not allowed without country code"

    #@1b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 127
    return v4

    #@1f
    .line 131
    :cond_1
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@21
    if-nez v0, :cond_3

    #@23
    .line 133
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@25
    .line 134
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiNative;->getChannelsForBand(I)[I

    #@28
    move-result-object v1

    #@29
    .line 132
    invoke-static {v0, p2, v1}, Lcom/android/server/wifi/util/ApConfigUtil;->chooseApChannel(ILjava/util/ArrayList;[I)I

    #@2c
    move-result v0

    #@2d
    iput v0, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@2f
    .line 135
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@31
    const/4 v1, -0x1

    #@32
    if-ne v0, v1, :cond_3

    #@34
    .line 136
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiNative;->isGetChannelsForBandSupported()Z

    #@37
    move-result v0

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 138
    const-string/jumbo v0, "ApConfigUtil"

    #@3d
    const-string/jumbo v1, "Failed to get available channel."

    #@40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    .line 139
    return v3

    #@44
    .line 143
    :cond_2
    iput v2, p3, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@46
    .line 144
    iput v5, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@48
    .line 148
    :cond_3
    return v2
.end method
