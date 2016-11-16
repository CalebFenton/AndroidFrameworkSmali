.class public Lcom/android/server/wifi/util/InformationElementUtil;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/util/InformationElementUtil$BssLoad;,
        Lcom/android/server/wifi/util/InformationElementUtil$Capabilities;,
        Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;,
        Lcom/android/server/wifi/util/InformationElementUtil$HtOperation;,
        Lcom/android/server/wifi/util/InformationElementUtil$Interworking;,
        Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;,
        Lcom/android/server/wifi/util/InformationElementUtil$SupportedRates;,
        Lcom/android/server/wifi/util/InformationElementUtil$TrafficIndicationMap;,
        Lcom/android/server/wifi/util/InformationElementUtil$VhtOperation;,
        Lcom/android/server/wifi/util/InformationElementUtil$Vsa;,
        Lcom/android/server/wifi/util/InformationElementUtil$WifiMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static parseInformationElements([B)[Landroid/net/wifi/ScanResult$InformationElement;
    .locals 8
    .param p0, "bytes"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 37
    if-nez p0, :cond_0

    #@3
    .line 38
    new-array v6, v6, [Landroid/net/wifi/ScanResult$InformationElement;

    #@5
    return-object v6

    #@6
    .line 40
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@9
    move-result-object v6

    #@a
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@c
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v0

    #@10
    .line 42
    .local v0, "data":Ljava/nio/ByteBuffer;
    new-instance v5, Ljava/util/ArrayList;

    #@12
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@15
    .line 43
    .local v5, "infoElements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/ScanResult$InformationElement;>;"
    const/4 v3, 0x0

    #@16
    .line 44
    .local v3, "found_ssid":Z
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@19
    move-result v6

    #@1a
    const/4 v7, 0x1

    #@1b
    if-le v6, v7, :cond_1

    #@1d
    .line 45
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@20
    move-result v6

    #@21
    and-int/lit16 v1, v6, 0xff

    #@23
    .line 46
    .local v1, "eid":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@26
    move-result v6

    #@27
    and-int/lit16 v2, v6, 0xff

    #@29
    .line 48
    .local v2, "elementLength":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@2c
    move-result v6

    #@2d
    if-gt v2, v6, :cond_1

    #@2f
    if-nez v1, :cond_2

    #@31
    if-eqz v3, :cond_2

    #@33
    .line 65
    .end local v1    # "eid":I
    .end local v2    # "elementLength":I
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v6

    #@37
    new-array v6, v6, [Landroid/net/wifi/ScanResult$InformationElement;

    #@39
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3c
    move-result-object v6

    #@3d
    check-cast v6, [Landroid/net/wifi/ScanResult$InformationElement;

    #@3f
    return-object v6

    #@40
    .line 55
    .restart local v1    # "eid":I
    .restart local v2    # "elementLength":I
    :cond_2
    if-nez v1, :cond_3

    #@42
    .line 56
    const/4 v3, 0x1

    #@43
    .line 59
    :cond_3
    new-instance v4, Landroid/net/wifi/ScanResult$InformationElement;

    #@45
    invoke-direct {v4}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    #@48
    .line 60
    .local v4, "ie":Landroid/net/wifi/ScanResult$InformationElement;
    iput v1, v4, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@4a
    .line 61
    new-array v6, v2, [B

    #@4c
    iput-object v6, v4, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@4e
    .line 62
    iget-object v6, v4, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@50
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@53
    .line 63
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    goto :goto_0
.end method
