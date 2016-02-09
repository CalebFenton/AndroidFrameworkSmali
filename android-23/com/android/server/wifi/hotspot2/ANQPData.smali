.class public Lcom/android/server/wifi/hotspot2/ANQPData;
.super Ljava/lang/Object;
.source "ANQPData.java"


# static fields
.field private static final ANQP_HOLDOFF_TIME:J = 0x2710L

.field private static final ANQP_QUALIFIED_CACHE_TIMEOUT:J = 0x36ee80L

.field private static final ANQP_UNQUALIFIED_CACHE_TIMEOUT:J = 0x493e0L

.field private static final MAX_RETRY:I = 0x6


# instance fields
.field private final mANQPElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation
.end field

.field private final mCtime:J

.field private final mExpiry:J

.field private final mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

.field private final mRetry:I


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Lcom/android/server/wifi/hotspot2/ANQPData;)V
    .locals 4
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p2, "existing"    # Lcom/android/server/wifi/hotspot2/ANQPData;

    #@0
    .prologue
    const-wide/16 v2, 0x2710

    #@2
    const/4 v0, 0x0

    #@3
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 57
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@8
    .line 58
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@a
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@10
    .line 60
    if-nez p2, :cond_0

    #@12
    .line 61
    const/4 v0, 0x0

    #@13
    iput v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    #@15
    .line 62
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@17
    add-long/2addr v0, v2

    #@18
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@1a
    .line 56
    :goto_0
    return-void

    #@1b
    .line 65
    :cond_0
    invoke-direct {p2}, Lcom/android/server/wifi/hotspot2/ANQPData;->getRetry()I

    #@1e
    move-result v0

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    const/4 v1, 0x6

    #@22
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v0

    #@26
    iput v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    #@28
    .line 66
    iget v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    #@2a
    const/4 v1, 0x1

    #@2b
    shl-int v0, v1, v0

    #@2d
    int-to-long v0, v0

    #@2e
    mul-long/2addr v0, v2

    #@2f
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@31
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 4
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 41
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@7
    .line 42
    if-eqz p2, :cond_0

    #@9
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@c
    move-result-object v0

    #@d
    :cond_0
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@f
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v0

    #@13
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@15
    .line 44
    iput v2, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    #@17
    .line 45
    if-nez p2, :cond_1

    #@19
    .line 46
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@1b
    const-wide/16 v2, 0x2710

    #@1d
    add-long/2addr v0, v2

    #@1e
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@20
    .line 39
    :goto_0
    return-void

    #@21
    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    #@24
    move-result v0

    #@25
    if-nez v0, :cond_2

    #@27
    .line 49
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@29
    const-wide/32 v2, 0x493e0

    #@2c
    add-long/2addr v0, v2

    #@2d
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@2f
    goto :goto_0

    #@30
    .line 52
    :cond_2
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@32
    const-wide/32 v2, 0x36ee80

    #@35
    add-long/2addr v0, v2

    #@36
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@38
    goto :goto_0
.end method

.method private getRetry()I
    .locals 1

    #@0
    .prologue
    .line 93
    iget v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    #@2
    return v0
.end method


# virtual methods
.method public expired()Z
    .locals 2

    #@0
    .prologue
    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public expired(J)Z
    .locals 3
    .param p1, "at"    # J

    #@0
    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@2
    cmp-long v0, v0, p1

    #@4
    if-gtz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public getANQPElements()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNetwork()Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .locals 1

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@2
    return-object v0
.end method

.method protected isValid(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z
    .locals 6
    .param p1, "nwk"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 87
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 88
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    #@8
    move-result v1

    #@9
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@b
    invoke-virtual {v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    #@e
    move-result v2

    #@f
    if-ne v1, v2, :cond_0

    #@11
    .line 89
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@16
    move-result-wide v4

    #@17
    cmp-long v1, v2, v4

    #@19
    if-lez v1, :cond_0

    #@1b
    const/4 v0, 0x1

    #@1c
    .line 87
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->toString(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 8
    .param p1, "brief"    # Z

    #@0
    .prologue
    const/16 v4, 0x2d

    #@2
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 98
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@9
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->toKeyString()Ljava/lang/String;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    const-string/jumbo v5, ", domid "

    #@14
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v3

    #@18
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@1a
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    #@1d
    move-result v5

    #@1e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    .line 99
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@23
    if-nez v3, :cond_2

    #@25
    .line 100
    const-string/jumbo v3, ", unresolved, "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 105
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2e
    move-result-wide v0

    #@2f
    .line 106
    .local v0, "now":J
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@31
    sub-long v6, v0, v6

    #@33
    invoke-static {v6, v7}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    const-string/jumbo v5, " old, expires in "

    #@3e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    .line 107
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@44
    sub-long/2addr v6, v0

    #@45
    invoke-static {v6, v7}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    #@48
    move-result-object v5

    #@49
    .line 106
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    .line 107
    const/16 v5, 0x20

    #@4f
    .line 106
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52
    .line 108
    if-eqz p1, :cond_4

    #@54
    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    #@57
    move-result v3

    #@58
    if-eqz v3, :cond_3

    #@5a
    const/16 v3, 0x78

    #@5c
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5f
    .line 110
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@61
    if-nez v3, :cond_0

    #@63
    const/16 v4, 0x75

    #@65
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@68
    .line 115
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6b
    move-result-object v3

    #@6c
    return-object v3

    #@6d
    .line 103
    .end local v0    # "now":J
    :cond_2
    const-string/jumbo v3, ", "

    #@70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v3

    #@74
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@76
    invoke-interface {v5}, Ljava/util/Map;->size()I

    #@79
    move-result v5

    #@7a
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v3

    #@7e
    const-string/jumbo v5, " elements, "

    #@81
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    goto :goto_0

    #@85
    .restart local v0    # "now":J
    :cond_3
    move v3, v4

    #@86
    .line 109
    goto :goto_1

    #@87
    .line 112
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@89
    if-eqz v3, :cond_1

    #@8b
    .line 113
    const-string/jumbo v3, " data="

    #@8e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@97
    goto :goto_2
.end method
