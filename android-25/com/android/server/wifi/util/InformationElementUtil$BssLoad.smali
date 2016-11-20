.class public Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BssLoad"
.end annotation


# instance fields
.field public capacity:I

.field public channelUtilization:I

.field public stationCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 70
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->stationCount:I

    #@6
    .line 71
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->channelUtilization:I

    #@8
    .line 72
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->capacity:I

    #@a
    .line 69
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 4
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    const v3, 0xffff

    #@3
    .line 75
    iget v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@5
    const/16 v2, 0xb

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "Element id is not BSS_LOAD, : "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1

    #@25
    .line 78
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@27
    array-length v1, v1

    #@28
    const/4 v2, 0x5

    #@29
    if-eq v1, v2, :cond_1

    #@2b
    .line 79
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v2, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v3, "BSS Load element length is not 5: "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 80
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@3b
    array-length v3, v3

    #@3c
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 82
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@4a
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@4d
    move-result-object v1

    #@4e
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@50
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@53
    move-result-object v0

    #@54
    .line 83
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    #@57
    move-result v1

    #@58
    and-int/2addr v1, v3

    #@59
    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->stationCount:I

    #@5b
    .line 84
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@5e
    move-result v1

    #@5f
    and-int/lit16 v1, v1, 0xff

    #@61
    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->channelUtilization:I

    #@63
    .line 85
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    #@66
    move-result v1

    #@67
    and-int/2addr v1, v3

    #@68
    iput v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;->capacity:I

    #@6a
    .line 74
    return-void
.end method
