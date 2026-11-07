.class public final Landroid/net/connectivity/org/chromium/net/impl/CronetRequestCommon;
.super Ljava/lang/Object;
.source "CronetRequestCommon.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist estimateHeadersSizeInBytes(Ljava/util/Collection;)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    .line 63
    .local p0, "headers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 64
    :cond_5
    const-wide/16 v0, 0x0

    .line 65
    .local v0, "responseHeaderSizeInBytes":J
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 66
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    .local v4, "key":Ljava/lang/String;
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 68
    :cond_25
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 69
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_39

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v0, v6

    .line 70
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_39
    goto :goto_b

    .line 71
    :cond_3a
    return-wide v0
.end method

.method public static blacklist estimateHeadersSizeInBytes(Ljava/util/Map;)J
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    .line 43
    .local p0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 45
    :cond_5
    const-wide/16 v0, 0x0

    .line 46
    .local v0, "responseHeaderSizeInBytes":J
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 47
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48
    .local v4, "key":Ljava/lang/String;
    if-eqz v4, :cond_29

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 49
    :cond_29
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_30

    goto :goto_f

    .line 51
    :cond_30
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 52
    .local v6, "content":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v0, v7

    .line 53
    .end local v6    # "content":Ljava/lang/String;
    goto :goto_3a

    .line 54
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_4d
    goto :goto_f

    .line 55
    :cond_4e
    return-wide v0
.end method

.method public static blacklist estimateHeadersSizeInBytes([Ljava/lang/String;)J
    .registers 8
    .param p0, "headers"    # [Ljava/lang/String;

    .line 79
    if-nez p0, :cond_5

    const-wide/16 v0, 0x0

    return-wide v0

    .line 80
    :cond_5
    const-wide/16 v0, 0x0

    .line 81
    .local v0, "responseHeaderSizeInBytes":J
    array-length v2, p0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_18

    aget-object v4, p0, v3

    .line 82
    .local v4, "entry":Ljava/lang/String;
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v0, v5

    .line 81
    .end local v4    # "entry":Ljava/lang/String;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 84
    :cond_18
    return-wide v0
.end method

.method public static blacklist finishedReasonToCronetTrafficInfoRequestTerminalState(I)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;
    .registers 4
    .param p0, "finishedReason"    # I

    .line 24
    packed-switch p0, :pswitch_data_26

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid finished reason while producing request terminal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :pswitch_1c
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->CANCELLED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    return-object v0

    .line 28
    :pswitch_1f
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->ERROR:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    return-object v0

    .line 26
    :pswitch_22
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->SUCCEEDED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method
