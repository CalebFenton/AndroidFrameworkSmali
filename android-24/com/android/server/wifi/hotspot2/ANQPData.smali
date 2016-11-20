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

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mCtime:J

.field private final mExpiry:J

.field private final mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

.field private final mRetry:I


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/hotspot2/NetworkDetail;Lcom/android/server/wifi/hotspot2/ANQPData;)V
    .locals 4
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;
    .param p2, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .param p3, "existing"    # Lcom/android/server/wifi/hotspot2/ANQPData;

    #@0
    .prologue
    const-wide/16 v2, 0x2710

    #@2
    const/4 v0, 0x0

    #@3
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 63
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    #@8
    .line 64
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@a
    .line 65
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@c
    .line 66
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    #@e
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@14
    .line 67
    if-nez p3, :cond_0

    #@16
    .line 68
    const/4 v0, 0x0

    #@17
    iput v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    #@19
    .line 69
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@1b
    add-long/2addr v0, v2

    #@1c
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@1e
    .line 62
    :goto_0
    return-void

    #@1f
    .line 72
    :cond_0
    invoke-direct {p3}, Lcom/android/server/wifi/hotspot2/ANQPData;->getRetry()I

    #@22
    move-result v0

    #@23
    add-int/lit8 v0, v0, 0x1

    #@25
    const/4 v1, 0x6

    #@26
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    #@2c
    .line 73
    iget v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    #@2e
    const/4 v1, 0x1

    #@2f
    shl-int v0, v1, v0

    #@31
    int-to-long v0, v0

    #@32
    mul-long/2addr v0, v2

    #@33
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@35
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 4
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;
    .param p2, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/Clock;",
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
    .local p3, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 46
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    #@7
    .line 47
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@9
    .line 48
    if-eqz p3, :cond_0

    #@b
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    #@10
    :cond_0
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@12
    .line 49
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    #@14
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@17
    move-result-wide v0

    #@18
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@1a
    .line 50
    iput v2, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    #@1c
    .line 51
    if-nez p3, :cond_1

    #@1e
    .line 52
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@20
    const-wide/16 v2, 0x2710

    #@22
    add-long/2addr v0, v2

    #@23
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@25
    .line 44
    :goto_0
    return-void

    #@26
    .line 54
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getAnqpDomainID()I

    #@29
    move-result v0

    #@2a
    if-nez v0, :cond_2

    #@2c
    .line 55
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@2e
    const-wide/32 v2, 0x493e0

    #@31
    add-long/2addr v0, v2

    #@32
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@34
    goto :goto_0

    #@35
    .line 58
    :cond_2
    iget-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@37
    const-wide/32 v2, 0x36ee80

    #@3a
    add-long/2addr v0, v2

    #@3b
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@3d
    goto :goto_0
.end method

.method private getRetry()I
    .locals 1

    #@0
    .prologue
    .line 127
    iget v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mRetry:I

    #@2
    return v0
.end method


# virtual methods
.method public disjoint(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    const/4 v3, 0x0

    #@1
    .line 78
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 81
    return-object v3

    #@6
    .line 84
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    .line 85
    .local v0, "additions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "element$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_2

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Lcom/android/server/wifi/anqp/Constants$ANQPElementType;

    #@1b
    .line 86
    .local v1, "element":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@1d
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@20
    move-result v4

    #@21
    if-nez v4, :cond_1

    #@23
    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    goto :goto_0

    #@27
    .line 90
    .end local v1    # "element":Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_3

    #@2d
    move-object v0, v3

    #@2e
    .end local v0    # "additions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :cond_3
    return-object v0
.end method

.method public expired()Z
    .locals 2

    #@0
    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@5
    move-result-wide v0

    #@6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public expired(J)Z
    .locals 3
    .param p1, "at"    # J

    #@0
    .prologue
    .line 107
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
    .line 95
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
    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mNetwork:Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@2
    return-object v0
.end method

.method protected hasData()Z
    .locals 1

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method protected isValid(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z
    .locals 6
    .param p1, "nwk"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 121
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 122
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
    .line 123
    iget-wide v2, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@13
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    #@15
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@18
    move-result-wide v4

    #@19
    cmp-long v1, v2, v4

    #@1b
    if-lez v1, :cond_0

    #@1d
    const/4 v0, 0x1

    #@1e
    .line 121
    :cond_0
    return v0
.end method

.method protected merge(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 115
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    if-eqz p1, :cond_0

    #@2
    .line 116
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@4
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@7
    .line 114
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 154
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
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 132
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
    .line 133
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@23
    if-nez v3, :cond_2

    #@25
    .line 134
    const-string/jumbo v3, ", unresolved, "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 139
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mClock:Lcom/android/server/wifi/Clock;

    #@2d
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@30
    move-result-wide v0

    #@31
    .line 140
    .local v0, "now":J
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mCtime:J

    #@33
    sub-long v6, v0, v6

    #@35
    invoke-static {v6, v7}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    const-string/jumbo v5, " old, expires in "

    #@40
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 141
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mExpiry:J

    #@46
    sub-long/2addr v6, v0

    #@47
    invoke-static {v6, v7}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    #@4a
    move-result-object v5

    #@4b
    .line 140
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v3

    #@4f
    .line 141
    const/16 v5, 0x20

    #@51
    .line 140
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@54
    .line 142
    if-eqz p1, :cond_4

    #@56
    .line 143
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    #@59
    move-result v3

    #@5a
    if-eqz v3, :cond_3

    #@5c
    const/16 v3, 0x78

    #@5e
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@61
    .line 144
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@63
    if-nez v3, :cond_0

    #@65
    const/16 v4, 0x75

    #@67
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6a
    .line 149
    :cond_1
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6d
    move-result-object v3

    #@6e
    return-object v3

    #@6f
    .line 137
    .end local v0    # "now":J
    :cond_2
    const-string/jumbo v3, ", "

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    iget-object v5, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@78
    invoke-interface {v5}, Ljava/util/Map;->size()I

    #@7b
    move-result v5

    #@7c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v3

    #@80
    const-string/jumbo v5, " elements, "

    #@83
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    goto :goto_0

    #@87
    .restart local v0    # "now":J
    :cond_3
    move v3, v4

    #@88
    .line 143
    goto :goto_1

    #@89
    .line 146
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@8b
    if-eqz v3, :cond_1

    #@8d
    .line 147
    const-string/jumbo v3, " data="

    #@90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v3

    #@94
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/ANQPData;->mANQPElements:Ljava/util/Map;

    #@96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@99
    goto :goto_2
.end method
