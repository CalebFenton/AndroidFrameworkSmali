.class public Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RoamingConsortium"
.end annotation


# instance fields
.field public anqpOICount:I

.field public roamingConsortiums:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 198
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    #@6
    .line 199
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    #@9
    .line 197
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 13
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 202
    iget v6, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@5
    const/16 v7, 0x6f

    #@7
    if-eq v6, v7, :cond_0

    #@9
    .line 203
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v7, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v8, "Element id is not ROAMING_CONSORTIUM, : "

    #@13
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    .line 204
    iget v8, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    #@19
    .line 203
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v7

    #@21
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v6

    #@25
    .line 206
    :cond_0
    iget-object v6, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@27
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@2a
    move-result-object v6

    #@2b
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@2d
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@30
    move-result-object v0

    #@31
    .line 207
    .local v0, "data":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@34
    move-result v6

    #@35
    and-int/lit16 v6, v6, 0xff

    #@37
    iput v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->anqpOICount:I

    #@39
    .line 209
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    #@3c
    move-result v6

    #@3d
    and-int/lit16 v1, v6, 0xff

    #@3f
    .line 210
    .local v1, "oi12Length":I
    and-int/lit8 v2, v1, 0xf

    #@41
    .line 211
    .local v2, "oi1Length":I
    ushr-int/lit8 v6, v1, 0x4

    #@43
    and-int/lit8 v3, v6, 0xf

    #@45
    .line 212
    .local v3, "oi2Length":I
    iget-object v6, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@47
    array-length v6, v6

    #@48
    add-int/lit8 v6, v6, -0x2

    #@4a
    sub-int/2addr v6, v2

    #@4b
    sub-int v4, v6, v3

    #@4d
    .line 213
    .local v4, "oi3Length":I
    const/4 v5, 0x0

    #@4e
    .line 214
    .local v5, "oiCount":I
    if-lez v2, :cond_1

    #@50
    .line 215
    const/4 v5, 0x1

    #@51
    .line 216
    if-lez v3, :cond_1

    #@53
    .line 217
    add-int/lit8 v5, v5, 0x1

    #@55
    .line 218
    if-lez v4, :cond_1

    #@57
    .line 219
    add-int/lit8 v5, v5, 0x1

    #@59
    .line 223
    :cond_1
    new-array v6, v5, [J

    #@5b
    iput-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    #@5d
    .line 224
    if-lez v2, :cond_2

    #@5f
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    #@61
    array-length v6, v6

    #@62
    if-lez v6, :cond_2

    #@64
    .line 225
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    #@66
    .line 226
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@68
    invoke-static {v0, v7, v2}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    #@6b
    move-result-wide v8

    #@6c
    .line 225
    aput-wide v8, v6, v10

    #@6e
    .line 228
    :cond_2
    if-lez v3, :cond_3

    #@70
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    #@72
    array-length v6, v6

    #@73
    if-le v6, v11, :cond_3

    #@75
    .line 229
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    #@77
    .line 230
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@79
    invoke-static {v0, v7, v3}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    #@7c
    move-result-wide v8

    #@7d
    .line 229
    aput-wide v8, v6, v11

    #@7f
    .line 232
    :cond_3
    if-lez v4, :cond_4

    #@81
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    #@83
    array-length v6, v6

    #@84
    if-le v6, v12, :cond_4

    #@86
    .line 233
    iget-object v6, p0, Lcom/android/server/wifi/util/InformationElementUtil$RoamingConsortium;->roamingConsortiums:[J

    #@88
    .line 234
    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@8a
    invoke-static {v0, v7, v4}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    #@8d
    move-result-wide v8

    #@8e
    .line 233
    aput-wide v8, v6, v12

    #@90
    .line 201
    :cond_4
    return-void
.end method
