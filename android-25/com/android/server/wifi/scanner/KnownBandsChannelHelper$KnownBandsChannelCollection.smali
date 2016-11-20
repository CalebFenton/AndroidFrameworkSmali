.class public Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;
.super Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
.source "KnownBandsChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnownBandsChannelCollection"
.end annotation


# instance fields
.field private mAllBands:I

.field private final mChannels:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExactBands:I

.field final synthetic this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 137
    iput-object p1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    #@3
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;-><init>(Lcom/android/server/wifi/scanner/ChannelHelper;)V

    #@6
    .line 141
    new-instance v0, Landroid/util/ArraySet;

    #@8
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@d
    .line 145
    iput v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    #@f
    .line 150
    iput v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    #@11
    .line 137
    return-void
.end method


# virtual methods
.method public addBand(I)V
    .locals 4
    .param p1, "band"    # I

    #@0
    .prologue
    .line 160
    iget v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    #@2
    or-int/2addr v2, p1

    #@3
    iput v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    #@5
    .line 161
    iget v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    #@7
    or-int/2addr v2, p1

    #@8
    iput v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    #@a
    .line 162
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    #@c
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@f
    move-result-object v0

    #@10
    .line 163
    .local v0, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@12
    if-ge v1, v2, :cond_0

    #@14
    .line 164
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@16
    aget-object v3, v0, v1

    #@18
    iget v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@1a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@21
    .line 163
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 159
    :cond_0
    return-void
.end method

.method public addChannel(I)V
    .locals 2
    .param p1, "frequency"    # I

    #@0
    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@9
    .line 155
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    #@b
    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    #@d
    invoke-static {v1, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->-wrap0(Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;I)I

    #@10
    move-result v1

    #@11
    or-int/2addr v0, v1

    #@12
    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    #@14
    .line 153
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 208
    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    #@3
    .line 209
    iput v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    #@5
    .line 210
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@7
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    #@a
    .line 207
    return-void
.end method

.method public containsBand(I)Z
    .locals 4
    .param p1, "band"    # I

    #@0
    .prologue
    .line 175
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    #@2
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@5
    move-result-object v0

    #@6
    .line 176
    .local v0, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_1

    #@a
    .line 177
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@c
    aget-object v3, v0, v1

    #@e
    iget v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 178
    const/4 v2, 0x0

    #@1b
    return v2

    #@1c
    .line 176
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 181
    :cond_1
    const/4 v2, 0x1

    #@20
    return v2
.end method

.method public containsChannel(I)Z
    .locals 2
    .param p1, "channel"    # I

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V
    .locals 5
    .param p1, "bucketSettings"    # Lcom/android/server/wifi/WifiNative$BucketSettings;
    .param p2, "maxChannels"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 248
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@3
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@6
    move-result v2

    #@7
    if-gt v2, p2, :cond_0

    #@9
    iget v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    #@b
    iget v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    #@d
    if-ne v2, v3, :cond_2

    #@f
    .line 249
    :cond_0
    iget v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    #@11
    if-eqz v2, :cond_2

    #@13
    .line 250
    iget v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    #@15
    iput v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    #@17
    .line 251
    iput v4, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@19
    .line 252
    const/4 v2, 0x0

    #@1a
    iput-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@1c
    .line 247
    :cond_1
    return-void

    #@1d
    .line 254
    :cond_2
    iput v4, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    #@1f
    .line 255
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@21
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@24
    move-result v2

    #@25
    iput v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@27
    .line 256
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@29
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@2c
    move-result v2

    #@2d
    new-array v2, v2, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@2f
    iput-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@31
    .line 257
    const/4 v1, 0x0

    #@32
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@34
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@37
    move-result v2

    #@38
    if-ge v1, v2, :cond_1

    #@3a
    .line 258
    new-instance v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@3c
    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    #@3f
    .line 259
    .local v0, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@41
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@44
    move-result-object v2

    #@45
    check-cast v2, Ljava/lang/Integer;

    #@47
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@4a
    move-result v2

    #@4b
    iput v2, v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@4d
    .line 260
    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@4f
    aput-object v0, v2, v1

    #@51
    .line 257
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_0
.end method

.method public getAllChannels()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 275
    new-instance v0, Landroid/util/ArraySet;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@4
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@7
    return-object v0
.end method

.method public getChannelSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mAllBands:I

    #@8
    iget v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    #@a
    if-eq v0, v1, :cond_0

    #@c
    .line 240
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@e
    return-object v0

    #@f
    .line 242
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    #@11
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@14
    return-object v0
.end method

.method public getContainingChannelsFromBand(I)Ljava/util/Set;
    .locals 5
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 227
    new-instance v1, Landroid/util/ArraySet;

    #@2
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 228
    .local v1, "containingChannels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    #@7
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@a
    move-result-object v0

    #@b
    .line 229
    .local v0, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v2, 0x0

    #@c
    .local v2, "i":I
    :goto_0
    array-length v3, v0

    #@d
    if-ge v2, v3, :cond_1

    #@f
    .line 230
    iget-object v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@11
    aget-object v4, v0, v2

    #@13
    iget v4, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_0

    #@1f
    .line 231
    aget-object v3, v0, v2

    #@21
    iget v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2a
    .line 229
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 234
    :cond_1
    return-object v1
.end method

.method public getMissingChannelsFromBand(I)Ljava/util/Set;
    .locals 5
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 215
    new-instance v2, Landroid/util/ArraySet;

    #@2
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@5
    .line 216
    .local v2, "missingChannels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    #@7
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@a
    move-result-object v0

    #@b
    .line 217
    .local v0, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    array-length v3, v0

    #@d
    if-ge v1, v3, :cond_1

    #@f
    .line 218
    iget-object v3, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@11
    aget-object v4, v0, v1

    #@13
    iget v4, v4, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v4

    #@19
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@1c
    move-result v3

    #@1d
    if-nez v3, :cond_0

    #@1f
    .line 219
    aget-object v3, v0, v1

    #@21
    iget v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@23
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@2a
    .line 217
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 222
    :cond_1
    return-object v2
.end method

.method public getSupplicantScanFreqs()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 267
    iget v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mExactBands:I

    #@2
    const/4 v1, 0x7

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 268
    const/4 v0, 0x0

    #@6
    return-object v0

    #@7
    .line 270
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    #@9
    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@b
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@e
    return-object v0
.end method

.method public isAllChannels()Z
    .locals 2

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    #@2
    const/4 v1, 0x7

    #@3
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@6
    move-result-object v0

    #@7
    array-length v0, v0

    #@8
    .line 203
    iget-object v1, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@a
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    #@d
    move-result v1

    #@e
    .line 202
    if-ne v0, v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public partiallyContainsBand(I)Z
    .locals 4
    .param p1, "band"    # I

    #@0
    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->this$0:Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;

    #@2
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;->getAvailableScanChannels(I)[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@5
    move-result-object v0

    #@6
    .line 187
    .local v0, "bandChannels":[Landroid/net/wifi/WifiScanner$ChannelSpec;
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@8
    if-ge v1, v2, :cond_1

    #@a
    .line 188
    iget-object v2, p0, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper$KnownBandsChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@c
    aget-object v3, v0, v1

    #@e
    iget v3, v3, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 189
    const/4 v2, 0x1

    #@1b
    return v2

    #@1c
    .line 187
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 192
    :cond_1
    const/4 v2, 0x0

    #@20
    return v2
.end method
