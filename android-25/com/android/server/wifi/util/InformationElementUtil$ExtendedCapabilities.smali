.class public Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;
.super Ljava/lang/Object;
.source "InformationElementUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/InformationElementUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedCapabilities"
.end annotation


# static fields
.field private static final RTT_RESP_ENABLE_BIT:I = 0x46

.field private static final SSID_UTF8_BIT:J = 0x1000000000000L


# instance fields
.field public extendedCapabilities:Ljava/lang/Long;

.field public is80211McRTTResponder:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 275
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    #@6
    .line 276
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    #@9
    .line 278
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;

    #@0
    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 275
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    #@6
    .line 276
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    #@9
    .line 282
    iget-object v0, p1, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    #@b
    iput-object v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    #@d
    .line 283
    iget-boolean v0, p1, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    #@f
    iput-boolean v0, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    #@11
    .line 281
    return-void
.end method


# virtual methods
.method public from(Landroid/net/wifi/ScanResult$InformationElement;)V
    .locals 6
    .param p1, "ie"    # Landroid/net/wifi/ScanResult$InformationElement;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 291
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@3
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@6
    move-result-object v3

    #@7
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@9
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@c
    move-result-object v0

    #@d
    .line 293
    .local v0, "data":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@f
    iget-object v4, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@11
    array-length v4, v4

    #@12
    invoke-static {v0, v3, v4}, Lcom/android/server/wifi/anqp/Constants;->getInteger(Ljava/nio/ByteBuffer;Ljava/nio/ByteOrder;I)J

    #@15
    move-result-wide v4

    #@16
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v3

    #@1a
    .line 292
    iput-object v3, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    #@1c
    .line 295
    const/16 v1, 0x8

    #@1e
    .line 297
    .local v1, "index":I
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@20
    array-length v3, v3

    #@21
    const/16 v4, 0x9

    #@23
    if-ge v3, v4, :cond_0

    #@25
    .line 298
    iput-boolean v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    #@27
    .line 290
    :goto_0
    return-void

    #@28
    .line 300
    :cond_0
    iget-object v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    #@2a
    aget-byte v3, v3, v1

    #@2c
    and-int/lit8 v3, v3, 0x40

    #@2e
    if-eqz v3, :cond_1

    #@30
    const/4 v2, 0x1

    #@31
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->is80211McRTTResponder:Z

    #@33
    goto :goto_0
.end method

.method public isStrictUtf8()Z
    .locals 6

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 287
    iget-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wifi/util/InformationElementUtil$ExtendedCapabilities;->extendedCapabilities:Ljava/lang/Long;

    #@7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@a
    move-result-wide v2

    #@b
    const-wide/high16 v4, 0x1000000000000L

    #@d
    and-long/2addr v2, v4

    #@e
    const-wide/16 v4, 0x0

    #@10
    cmp-long v1, v2, v4

    #@12
    if-eqz v1, :cond_0

    #@14
    const/4 v0, 0x1

    #@15
    :cond_0
    return v0
.end method
