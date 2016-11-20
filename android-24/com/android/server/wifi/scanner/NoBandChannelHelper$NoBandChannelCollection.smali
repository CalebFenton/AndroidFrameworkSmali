.class public Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;
.super Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
.source "NoBandChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/NoBandChannelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NoBandChannelCollection"
.end annotation


# instance fields
.field private mAllChannels:Z

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

.field final synthetic this$0:Lcom/android/server/wifi/scanner/NoBandChannelHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/scanner/NoBandChannelHelper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/NoBandChannelHelper;

    #@0
    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->this$0:Lcom/android/server/wifi/scanner/NoBandChannelHelper;

    #@2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;-><init>(Lcom/android/server/wifi/scanner/ChannelHelper;)V

    #@5
    .line 73
    new-instance v0, Landroid/util/ArraySet;

    #@7
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@c
    .line 74
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    #@f
    .line 72
    return-void
.end method


# virtual methods
.method public addBand(I)V
    .locals 1
    .param p1, "band"    # I

    #@0
    .prologue
    .line 83
    if-eqz p1, :cond_0

    #@2
    .line 84
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    #@5
    .line 82
    :cond_0
    return-void
.end method

.method public addChannel(I)V
    .locals 2
    .param p1, "frequency"    # I

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@9
    .line 77
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 116
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    #@3
    .line 117
    iget-object v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@5
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    #@8
    .line 115
    return-void
.end method

.method public containsBand(I)Z
    .locals 1
    .param p1, "band"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 95
    if-eqz p1, :cond_0

    #@3
    .line 96
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    #@5
    return v0

    #@6
    .line 98
    :cond_0
    return v0
.end method

.method public containsChannel(I)Z
    .locals 2
    .param p1, "channel"    # I

    #@0
    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0
.end method

.method public fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V
    .locals 4
    .param p1, "bucketSettings"    # Lcom/android/server/wifi/WifiNative$BucketSettings;
    .param p2, "maxChannels"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 147
    iget-boolean v2, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    #@3
    if-nez v2, :cond_0

    #@5
    iget-object v2, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@7
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@a
    move-result v2

    #@b
    if-le v2, p2, :cond_2

    #@d
    .line 148
    :cond_0
    const/4 v2, 0x7

    #@e
    iput v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    #@10
    .line 149
    iput v3, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@12
    .line 150
    const/4 v2, 0x0

    #@13
    iput-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@15
    .line 146
    :cond_1
    return-void

    #@16
    .line 152
    :cond_2
    iput v3, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    #@18
    .line 153
    iget-object v2, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@1a
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@1d
    move-result v2

    #@1e
    iput v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->num_channels:I

    #@20
    .line 154
    iget-object v2, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@22
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@25
    move-result v2

    #@26
    new-array v2, v2, [Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@28
    iput-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@2a
    .line 155
    const/4 v1, 0x0

    #@2b
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@2d
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@30
    move-result v2

    #@31
    if-ge v1, v2, :cond_1

    #@33
    .line 156
    new-instance v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@35
    invoke-direct {v0}, Lcom/android/server/wifi/WifiNative$ChannelSettings;-><init>()V

    #@38
    .line 157
    .local v0, "channelSettings":Lcom/android/server/wifi/WifiNative$ChannelSettings;
    iget-object v2, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@3a
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@3d
    move-result-object v2

    #@3e
    check-cast v2, Ljava/lang/Integer;

    #@40
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@43
    move-result v2

    #@44
    iput v2, v0, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@46
    .line 158
    iget-object v2, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@48
    aput-object v0, v2, v1

    #@4a
    .line 155
    add-int/lit8 v1, v1, 0x1

    #@4c
    goto :goto_0
.end method

.method public getChannelSet()Ljava/util/Set;
    .locals 1
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
    .line 138
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 141
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    #@c
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@f
    return-object v0

    #@10
    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@12
    return-object v0
.end method

.method public getContainingChannelsFromBand(I)Ljava/util/Set;
    .locals 1
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
    .line 133
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@5
    return-object v0
.end method

.method public getMissingChannelsFromBand(I)Ljava/util/Set;
    .locals 1
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
    .line 125
    new-instance v0, Landroid/util/ArraySet;

    #@2
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@5
    return-object v0
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
    .line 165
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 166
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 168
    :cond_0
    new-instance v0, Landroid/util/ArraySet;

    #@8
    iget-object v1, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@a
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    #@d
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mAllChannels:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/wifi/scanner/NoBandChannelHelper$NoBandChannelCollection;->mChannels:Landroid/util/ArraySet;

    #@6
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public partiallyContainsBand(I)Z
    .locals 1
    .param p1, "band"    # I

    #@0
    .prologue
    .line 106
    const/4 v0, 0x0

    #@1
    return v0
.end method
