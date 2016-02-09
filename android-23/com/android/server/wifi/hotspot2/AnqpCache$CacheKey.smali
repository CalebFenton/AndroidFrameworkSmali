.class Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
.super Ljava/lang/Object;
.source "AnqpCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/AnqpCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheKey"
.end annotation


# instance fields
.field private final mBSSID:J

.field private final mHESSID:J

.field private final mSSID:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    .locals 1
    .param p0, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p1, "standardESS"    # Z

    #@0
    .prologue
    invoke-static {p0, p1}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->buildKey(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "bssid"    # J
    .param p4, "hessid"    # J

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    #@5
    .line 33
    iput-wide p2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    #@7
    .line 34
    iput-wide p4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    #@9
    .line 31
    return-void
.end method

.method private static buildKey(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    .locals 10
    .param p0, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p1, "standardESS"    # Z

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    .line 57
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    #@5
    move-result v0

    #@6
    int-to-long v6, v0

    #@7
    cmp-long v0, v6, v8

    #@9
    if-eqz v0, :cond_1

    #@b
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHESSID()J

    #@e
    move-result-wide v6

    #@f
    cmp-long v0, v6, v8

    #@11
    if-nez v0, :cond_0

    #@13
    if-eqz p1, :cond_1

    #@15
    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHESSID()J

    #@18
    move-result-wide v6

    #@19
    cmp-long v0, v6, v8

    #@1b
    if-eqz v0, :cond_2

    #@1d
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    #@20
    move-result v0

    #@21
    if-lez v0, :cond_2

    #@23
    .line 63
    const/4 v1, 0x0

    #@24
    .line 64
    .local v1, "ssid":Ljava/lang/String;
    const-wide/16 v2, 0x0

    #@26
    .line 65
    .local v2, "bssid":J
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getHESSID()J

    #@29
    move-result-wide v4

    #@2a
    .line 73
    .end local v1    # "ssid":Ljava/lang/String;
    .local v4, "hessid":J
    :goto_0
    new-instance v0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@2c
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;-><init>(Ljava/lang/String;JJ)V

    #@2f
    return-object v0

    #@30
    .line 58
    .end local v2    # "bssid":J
    .end local v4    # "hessid":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 59
    .local v1, "ssid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    #@37
    move-result-wide v2

    #@38
    .line 60
    .restart local v2    # "bssid":J
    const-wide/16 v4, 0x0

    #@3a
    .line 57
    .restart local v4    # "hessid":J
    goto :goto_0

    #@3b
    .line 68
    .end local v1    # "ssid":Ljava/lang/String;
    .end local v2    # "bssid":J
    .end local v4    # "hessid":J
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getSSID()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    .line 69
    .restart local v1    # "ssid":Ljava/lang/String;
    const-wide/16 v2, 0x0

    #@41
    .line 70
    .restart local v2    # "bssid":J
    const-wide/16 v4, 0x0

    #@43
    .restart local v4    # "hessid":J
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 91
    if-ne p1, p0, :cond_0

    #@4
    .line 92
    return v1

    #@5
    .line 94
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    const-class v4, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@d
    if-eq v3, v4, :cond_2

    #@f
    .line 95
    :cond_1
    return v2

    #@10
    :cond_2
    move-object v0, p1

    #@11
    .line 97
    check-cast v0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@13
    .line 98
    .local v0, "that":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, v0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    #@15
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    #@17
    invoke-static {v3, v4}, Lcom/android/server/wifi/hotspot2/Utils;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    #@1a
    move-result v3

    #@1b
    if-nez v3, :cond_4

    #@1d
    .line 99
    iget-wide v4, v0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    #@1f
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    #@21
    cmp-long v3, v4, v6

    #@23
    if-nez v3, :cond_4

    #@25
    .line 100
    iget-wide v4, v0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    #@27
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    #@29
    cmp-long v3, v4, v6

    #@2b
    if-nez v3, :cond_3

    #@2d
    .line 98
    :goto_0
    return v1

    #@2e
    :cond_3
    move v1, v2

    #@2f
    .line 100
    goto :goto_0

    #@30
    :cond_4
    move v1, v2

    #@31
    .line 98
    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x1f

    #@2
    const-wide/16 v2, 0x0

    #@4
    const/16 v4, 0x20

    #@6
    .line 78
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    #@8
    cmp-long v0, v0, v2

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 79
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    #@e
    ushr-long/2addr v0, v4

    #@f
    mul-long/2addr v0, v6

    #@10
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    #@12
    add-long/2addr v0, v2

    #@13
    long-to-int v0, v0

    #@14
    return v0

    #@15
    .line 81
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    #@17
    cmp-long v0, v0, v2

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 82
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    #@1d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@20
    move-result v0

    #@21
    mul-int/lit8 v0, v0, 0x1f

    #@23
    int-to-long v0, v0

    #@24
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    #@26
    ushr-long/2addr v2, v4

    #@27
    add-long/2addr v0, v2

    #@28
    mul-long/2addr v0, v6

    #@29
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    #@2b
    add-long/2addr v0, v2

    #@2c
    long-to-int v0, v0

    #@2d
    return v0

    #@2e
    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    #@30
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@33
    move-result v0

    #@34
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 105
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "HESSID:"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mHESSID:J

    #@16
    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toMACString(J)Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0

    #@23
    .line 108
    :cond_0
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    #@25
    cmp-long v0, v0, v2

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mBSSID:J

    #@30
    invoke-static {v2, v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toMACString(J)Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 110
    const-string/jumbo v1, ":<"

    #@3b
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 110
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    #@41
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->toUnicodeEscapedString(Ljava/lang/String;)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 110
    const-string/jumbo v1, ">"

    #@4c
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v0

    #@54
    return-object v0

    #@55
    .line 113
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const/16 v1, 0x3c

    #@5c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->mSSID:Ljava/lang/String;

    #@62
    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->toUnicodeEscapedString(Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v0

    #@6a
    const/16 v1, 0x3e

    #@6c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v0

    #@70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v0

    #@74
    return-object v0
.end method
