.class public Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VhtOperation"
.end annotation


# instance fields
.field public centerFreqIndex1:I

.field public centerFreqIndex2:I

.field public channelMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 125
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->channelMode:I

    #@6
    .line 126
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->centerFreqIndex1:I

    #@8
    .line 127
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->centerFreqIndex2:I

    #@a
    .line 124
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 3
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    .line 151
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@2
    const/16 v1, 0xc0

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Element id is not VHT_OPERATION, : "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    iget v2, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 154
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@24
    const/4 v1, 0x0

    #@25
    aget-byte v0, v0, v1

    #@27
    and-int/lit16 v0, v0, 0xff

    #@29
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->channelMode:I

    #@2b
    .line 155
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@2d
    const/4 v1, 0x1

    #@2e
    aget-byte v0, v0, v1

    #@30
    and-int/lit16 v0, v0, 0xff

    #@32
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->centerFreqIndex1:I

    #@34
    .line 156
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@36
    const/4 v1, 0x2

    #@37
    aget-byte v0, v0, v1

    #@39
    and-int/lit16 v0, v0, 0xff

    #@3b
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->centerFreqIndex2:I

    #@3d
    .line 150
    return-void
.end method

.method public getCenterFreq0()I
    .locals 1

    #@0
    .prologue
    .line 139
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->centerFreqIndex1:I

    #@2
    add-int/lit8 v0, v0, -0x24

    #@4
    mul-int/lit8 v0, v0, 0x5

    #@6
    add-int/lit16 v0, v0, 0x143c

    #@8
    return v0
.end method

.method public getCenterFreq1()I
    .locals 2

    #@0
    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->channelMode:I

    #@2
    const/4 v1, 0x1

    #@3
    if-le v0, v1, :cond_0

    #@5
    .line 144
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->centerFreqIndex2:I

    #@7
    add-int/lit8 v0, v0, -0x24

    #@9
    mul-int/lit8 v0, v0, 0x5

    #@b
    add-int/lit16 v0, v0, 0x143c

    #@d
    return v0

    #@e
    .line 146
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method public getChannelWidth()I
    .locals 1

    #@0
    .prologue
    .line 134
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->channelMode:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    return v0
.end method

.method public isValid()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 130
    iget v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;->channelMode:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method
