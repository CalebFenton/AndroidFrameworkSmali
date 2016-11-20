.class public Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HtOperation"
.end annotation


# instance fields
.field public secondChannelOffset:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 90
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    #@6
    .line 89
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 3
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    .line 117
    iget v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@2
    const/16 v1, 0x3d

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Element id is not HT_OPERATION, : "

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
    .line 120
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@24
    const/4 v1, 0x1

    #@25
    aget-byte v0, v0, v1

    #@27
    and-int/lit8 v0, v0, 0x3

    #@29
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    #@2b
    .line 116
    return-void
.end method

.method public getCenterFreq0(I)I
    .locals 4
    .param p1, "primaryFrequency"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 102
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    #@3
    if-eqz v0, :cond_2

    #@5
    .line 103
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    #@7
    const/4 v1, 0x1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    .line 104
    add-int/lit8 v0, p1, 0xa

    #@c
    return v0

    #@d
    .line 105
    :cond_0
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    #@f
    const/4 v1, 0x3

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 106
    add-int/lit8 v0, p1, -0xa

    #@14
    return v0

    #@15
    .line 108
    :cond_1
    const-string/jumbo v0, "HtOperation"

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Error on secondChannelOffset: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 109
    return v3

    #@32
    .line 112
    :cond_2
    return v3
.end method

.method public getChannelWidth()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 93
    iget v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;->secondChannelOffset:I

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 94
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 96
    :cond_0
    return v1
.end method
