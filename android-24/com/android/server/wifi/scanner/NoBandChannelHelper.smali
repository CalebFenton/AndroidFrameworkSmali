.class public Lcom/android/server/wifi/scanner/NoBandChannelHelper;
.super Lcom/android/server/wifi/scanner/ChannelHelper;
.source "NoBandChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;
    }
.end annotation


# static fields
.field private static final ALL_BAND_CHANNEL_COUNT_ESTIMATE:I = 0x24


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/ChannelHelper;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createChannelCollection()Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .locals 1

    #@0
    .prologue
    .line 175
    new-instance v0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;

    #@2
    invoke-direct {v0, p0}, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;-><init>(Lcom/android/server/wifi/scanner/NoBandChannelHelper;)V

    #@5
    return-object v0
.end method

.method public estimateScanDuration(Landroid/net/wifi/WifiScanner$ScanSettings;)I
    .locals 1
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 60
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 61
    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@6
    array-length v0, v0

    #@7
    mul-int/lit16 v0, v0, 0xc8

    #@9
    return v0

    #@a
    .line 63
    :cond_0
    const/16 v0, 0x1c20

    #@c
    return v0
.end method

.method public getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;
    .locals 1
    .param p1, "band"    # I

    #@0
    .prologue
    .line 55
    sget-object v0, Lcom/android/server/wifi/scanner/NoBandChannelHelper;->NO_CHANNELS:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@2
    return-object v0
.end method

.method public settingsContainChannel(Landroid/net/wifi/WifiScanner$ScanSettings;I)Z
    .locals 4
    .param p1, "settings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .param p2, "channel"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 41
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@4
    if-nez v1, :cond_2

    #@6
    .line 42
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@9
    array-length v1, v1

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 43
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@e
    aget-object v1, v1, v0

    #@10
    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@12
    if-ne v1, p2, :cond_0

    #@14
    .line 44
    return v3

    #@15
    .line 42
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 47
    :cond_1
    return v2

    #@19
    .line 49
    .end local v0    # "i":I
    :cond_2
    return v3
.end method
