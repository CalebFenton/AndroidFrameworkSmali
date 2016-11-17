.class public abstract Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
.super Ljava/lang/Object;
.source "ChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/ChannelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "ChannelCollection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/ChannelHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/scanner/ChannelHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/ChannelHelper;

    #@0
    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->this$0:Lcom/android/server/wifi/scanner/ChannelHelper;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public abstract addBand(I)V
.end method

.method public abstract addChannel(I)V
.end method

.method public addChannels(Landroid/net/wifi/WifiScanner$ScanSettings;)V
    .locals 2
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    .line 124
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 125
    const/4 v0, 0x0

    #@5
    .local v0, "j":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@7
    array-length v1, v1

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 126
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@c
    aget-object v1, v1, v0

    #@e
    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@10
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannel(I)V

    #@13
    .line 125
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 129
    .end local v0    # "j":I
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@18
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addBand(I)V

    #@1b
    .line 123
    :cond_1
    return-void
.end method

.method public addChannels(Lcom/android/server/wifi/WifiNative$BucketSettings;)V
    .locals 2
    .param p1, "bucketSettings"    # Lcom/android/server/wifi/WifiNative$BucketSettings;

    #@0
    .prologue
    .line 137
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 138
    const/4 v0, 0x0

    #@5
    .local v0, "j":I
    :goto_0
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@7
    array-length v1, v1

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 139
    iget-object v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

    #@c
    aget-object v1, v1, v0

    #@e
    iget v1, v1, Lcom/android/server/wifi/WifiNative$ChannelSettings;->frequency:I

    #@10
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addChannel(I)V

    #@13
    .line 138
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 142
    .end local v0    # "j":I
    :cond_0
    iget v1, p1, Lcom/android/server/wifi/WifiNative$BucketSettings;->band:I

    #@18
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->addBand(I)V

    #@1b
    .line 136
    :cond_1
    return-void
.end method

.method public abstract clear()V
.end method

.method public abstract containsBand(I)Z
.end method

.method public abstract containsChannel(I)Z
.end method

.method public containsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 3
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 150
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@3
    if-nez v1, :cond_2

    #@5
    .line 151
    const/4 v0, 0x0

    #@6
    .local v0, "j":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 152
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@d
    aget-object v1, v1, v0

    #@f
    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@11
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 153
    return v2

    #@18
    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 156
    :cond_1
    const/4 v1, 0x1

    #@1c
    return v1

    #@1d
    .line 158
    .end local v0    # "j":I
    :cond_2
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@1f
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsBand(I)Z

    #@22
    move-result v1

    #@23
    return v1
.end method

.method public abstract fillBucketSettings(Lcom/android/server/wifi/WifiNative$BucketSettings;I)V
.end method

.method public abstract getChannelSet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContainingChannelsFromBand(I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public getContainingChannelsFromSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/Set;
    .locals 3
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 200
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@2
    if-nez v2, :cond_2

    #@4
    .line 201
    new-instance v0, Landroid/util/ArraySet;

    #@6
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@9
    .line 202
    .local v0, "containingChannels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    #@a
    .local v1, "j":I
    :goto_0
    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@c
    array-length v2, v2

    #@d
    if-ge v1, v2, :cond_1

    #@f
    .line 203
    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@11
    aget-object v2, v2, v1

    #@13
    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@15
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_0

    #@1b
    .line 204
    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@1d
    aget-object v2, v2, v1

    #@1f
    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@28
    .line 202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 207
    :cond_1
    return-object v0

    #@2c
    .line 209
    .end local v0    # "containingChannels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    .end local v1    # "j":I
    :cond_2
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@2e
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getContainingChannelsFromBand(I)Ljava/util/Set;

    #@31
    move-result-object v2

    #@32
    return-object v2
.end method

.method public abstract getMissingChannelsFromBand(I)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public getMissingChannelsFromSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Ljava/util/Set;
    .locals 3
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiScanner$ScanSettings;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 182
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@2
    if-nez v2, :cond_2

    #@4
    .line 183
    new-instance v1, Landroid/util/ArraySet;

    #@6
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    #@9
    .line 184
    .local v1, "missingChannels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    #@a
    .local v0, "j":I
    :goto_0
    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@c
    array-length v2, v2

    #@d
    if-ge v0, v2, :cond_1

    #@f
    .line 185
    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@11
    aget-object v2, v2, v0

    #@13
    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@15
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 186
    iget-object v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@1d
    aget-object v2, v2, v0

    #@1f
    iget v2, v2, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@28
    .line 184
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 189
    :cond_1
    return-object v1

    #@2c
    .line 191
    .end local v0    # "j":I
    .end local v1    # "missingChannels":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_2
    iget v2, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@2e
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->getMissingChannelsFromBand(I)Ljava/util/Set;

    #@31
    move-result-object v2

    #@32
    return-object v2
.end method

.method public abstract getSupplicantScanFreqs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract partiallyContainsBand(I)Z
.end method

.method public partiallyContainsSettings(Landroid/net/wifi/WifiScanner$ScanSettings;)Z
    .locals 3
    .param p1, "scanSettings"    # Landroid/net/wifi/WifiScanner$ScanSettings;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 166
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@3
    if-nez v1, :cond_2

    #@5
    .line 167
    const/4 v0, 0x0

    #@6
    .local v0, "j":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 168
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    #@d
    aget-object v1, v1, v0

    #@f
    iget v1, v1, Landroid/net/wifi/WifiScanner$ChannelSpec;->frequency:I

    #@11
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->containsChannel(I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 169
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 167
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 172
    :cond_1
    return v2

    #@1d
    .line 174
    .end local v0    # "j":I
    :cond_2
    iget v1, p1, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    #@1f
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;->partiallyContainsBand(I)Z

    #@22
    move-result v1

    #@23
    return v1
.end method
