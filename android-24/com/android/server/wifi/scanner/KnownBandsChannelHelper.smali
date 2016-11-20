.class public Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;
.super Lcom/android/server/wifi/scanner/ChannelHelper;
.source "KnownBandsChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;
    }
.end annotation


# instance fields
.field private mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;I)I
    .locals 1
    .param p1, "frequency"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getBandFromChannel(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/ChannelHelper;-><init>()V

    #@3
    return-void
.end method

.method private static copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V
    .locals 4
    .param p0, "channelSpec"    # [Landroid/net/wifi/WifiScanner$ChannelSpec;
    .param p1, "offset"    # I
    .param p2, "channels"    # [I

    #@0
    .prologue
    .line 69
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 70
    add-int v1, p1, v0

    #@6
    new-instance v2, Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@8
    aget v3, p2, v0

    #@a
    invoke-direct {v2, v3}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    #@d
    aput-object v2, p0, v1

    #@f
    .line 69
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 68
    :cond_0
    return-void
.end method

.method private getBandFromChannel(I)I
    .locals 1
    .param p1, "frequency"    # I

    #@0
    .prologue
    .line 105
    const/16 v0, 0x960

    #@2
    if-gt v0, p1, :cond_0

    #@4
    const/16 v0, 0x9c4

    #@6
    if-ge p1, v0, :cond_0

    #@8
    .line 106
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 107
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->isDfsChannel(I)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 108
    const/4 v0, 0x4

    #@11
    return v0

    #@12
    .line 109
    :cond_1
    const/16 v0, 0x13ec

    #@14
    if-gt v0, p1, :cond_2

    #@16
    const/16 v0, 0x1770

    #@18
    if-ge p1, v0, :cond_2

    #@1a
    .line 110
    const/4 v0, 0x2

    #@1b
    return v0

    #@1c
    .line 112
    :cond_2
    const/4 v0, 0x0

    #@1d
    return v0
.end method

.method private isDfsChannel(I)Z
    .locals 6
    .param p1, "frequency"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 95
    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@3
    const/4 v3, 0x4

    #@4
    .line 94
    aget-object v3, v1, v3

    #@6
    array-length v4, v3

    #@7
    move v1, v2

    #@8
    :goto_0
    if-ge v1, v4, :cond_1

    #@a
    aget-object v0, v3, v1

    #@c
    .line 96
    .local v0, "dfsChannel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    iget v5, v0, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@e
    if-ne p1, v5, :cond_0

    #@10
    .line 97
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 94
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@14
    goto :goto_0

    #@15
    .line 100
    .end local v0    # "dfsChannel":Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_1
    return v2
.end method


# virtual methods
.method public bridge synthetic createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .locals 1

    #@0
    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->createChannelCollection()Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public createChannelCollection()Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;
    .locals 1

    #@0
    .prologue
    .line 276
    new-instance v0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;-><init>(Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;)V

    #@5
    return-object v0
.end method

.method public estimateScanDuration(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 86
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 87
    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@6
    array-length v0, v0

    #@7
    mul-int/lit16 v0, v0, 0xc8

    #@9
    return v0

    #@a
    .line 89
    :cond_0
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@c
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@f
    move-result-object v0

    #@10
    array-length v0, v0

    #@11
    mul-int/lit16 v0, v0, 0xc8

    #@13
    return v0
.end method

.method public getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 1
    .param p1, "band"    # I

    #@0
    .prologue
    .line 76
    const/4 v0, 0x1

    #@1
    if-lt p1, v0, :cond_0

    #@3
    const/4 v0, 0x7

    #@4
    if-le p1, v0, :cond_1

    #@6
    .line 78
    :cond_0
    sget-object v0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->NO_CHANNELS:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@8
    return-object v0

    #@9
    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@b
    aget-object v0, v0, p1

    #@d
    return-object v0
.end method

.method protected setBandChannels([I[I[I)V
    .locals 8
    .param p1, "channels2G"    # [I
    .param p2, "channels5G"    # [I
    .param p3, "channelsDfs"    # [I

    #@0
    .prologue
    const/4 v7, 0x6

    #@1
    const/4 v6, 0x5

    #@2
    const/4 v5, 0x3

    #@3
    const/4 v4, 0x7

    #@4
    const/4 v3, 0x0

    #@5
    .line 35
    const/16 v0, 0x8

    #@7
    new-array v0, v0, [[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@9
    iput-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@b
    .line 37
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@d
    sget-object v1, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->NO_CHANNELS:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@f
    aput-object v1, v0, v3

    #@11
    .line 39
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@13
    array-length v1, p1

    #@14
    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@16
    const/4 v2, 0x1

    #@17
    aput-object v1, v0, v2

    #@19
    .line 40
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@1b
    const/4 v1, 0x1

    #@1c
    aget-object v0, v0, v1

    #@1e
    invoke-static {v0, v3, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@21
    .line 42
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@23
    array-length v1, p2

    #@24
    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@26
    const/4 v2, 0x2

    #@27
    aput-object v1, v0, v2

    #@29
    .line 43
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@2b
    const/4 v1, 0x2

    #@2c
    aget-object v0, v0, v1

    #@2e
    invoke-static {v0, v3, p2}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@31
    .line 45
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@33
    array-length v1, p1

    #@34
    array-length v2, p2

    #@35
    add-int/2addr v1, v2

    #@36
    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@38
    aput-object v1, v0, v5

    #@3a
    .line 46
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@3c
    aget-object v0, v0, v5

    #@3e
    invoke-static {v0, v3, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@41
    .line 47
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@43
    aget-object v0, v0, v5

    #@45
    array-length v1, p1

    #@46
    invoke-static {v0, v1, p2}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@49
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@4b
    array-length v1, p3

    #@4c
    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@4e
    const/4 v2, 0x4

    #@4f
    aput-object v1, v0, v2

    #@51
    .line 50
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@53
    const/4 v1, 0x4

    #@54
    aget-object v0, v0, v1

    #@56
    invoke-static {v0, v3, p3}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@59
    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@5b
    array-length v1, p1

    #@5c
    array-length v2, p3

    #@5d
    add-int/2addr v1, v2

    #@5e
    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@60
    aput-object v1, v0, v6

    #@62
    .line 53
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@64
    aget-object v0, v0, v6

    #@66
    invoke-static {v0, v3, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@69
    .line 54
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@6b
    aget-object v0, v0, v6

    #@6d
    array-length v1, p1

    #@6e
    invoke-static {v0, v1, p3}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@71
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@73
    array-length v1, p2

    #@74
    array-length v2, p3

    #@75
    add-int/2addr v1, v2

    #@76
    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@78
    aput-object v1, v0, v7

    #@7a
    .line 57
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@7c
    aget-object v0, v0, v7

    #@7e
    invoke-static {v0, v3, p2}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@81
    .line 58
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@83
    aget-object v0, v0, v7

    #@85
    array-length v1, p2

    #@86
    invoke-static {v0, v1, p3}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@89
    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@8b
    .line 61
    array-length v1, p1

    #@8c
    array-length v2, p2

    #@8d
    add-int/2addr v1, v2

    #@8e
    array-length v2, p3

    #@8f
    add-int/2addr v1, v2

    #@90
    .line 60
    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@92
    aput-object v1, v0, v4

    #@94
    .line 62
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@96
    aget-object v0, v0, v4

    #@98
    invoke-static {v0, v3, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@9b
    .line 63
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@9d
    aget-object v0, v0, v4

    #@9f
    array-length v1, p1

    #@a0
    invoke-static {v0, v1, p2}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@a3
    .line 64
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->mBandsToChannels:[[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@a5
    aget-object v0, v0, v4

    #@a7
    array-length v1, p1

    #@a8
    array-length v2, p2

    #@a9
    add-int/2addr v1, v2

    #@aa
    invoke-static {v0, v1, p3}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->copyChannels([Landroid/net/wifi/WifiScanner$ChannelSpec;I[I)V

    #@ad
    .line 34
    return-void
.end method

.method public settingsContainChannel(Landroid/net/wifi/WifiScanner$ScanSettings;I)Z
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "channel"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 119
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 120
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@7
    .line 124
    .local v1, "settingsChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    :goto_0
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_1
    array-length v2, v1

    #@9
    if-ge v0, v2, :cond_2

    #@b
    .line 125
    aget-object v2, v1, v0

    #@d
    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@f
    if-ne v2, p2, :cond_1

    #@11
    .line 126
    const/4 v2, 0x1

    #@12
    return v2

    #@13
    .line 122
    .end local v0    # "i":I
    .end local v1    # "settingsChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    :cond_0
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@15
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@18
    move-result-object v1

    #@19
    .restart local v1    # "settingsChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    goto :goto_0

    #@1a
    .line 124
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_1

    #@1d
    .line 129
    :cond_2
    return v3
.end method
