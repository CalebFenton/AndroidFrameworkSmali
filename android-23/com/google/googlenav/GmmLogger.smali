.class public Landroid_maps_conflict_avoidance/com/google/googlenav/GmmLogger;
.super Ljava/lang/Object;
.source "GmmLogger.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14
    return-void
.end method

.method public static logTimingTileLatency(Ljava/lang/String;IIIII)V
    .locals 5
    .param p0, "tileType"    # Ljava/lang/String;
    .param p1, "timeToWrite"    # I
    .param p2, "timeToFirstByteMsec"    # I
    .param p3, "timeToLastByteMsec"    # I
    .param p4, "numTiles"    # I
    .param p5, "numBytes"    # I

    #@0
    .prologue
    const/4 v1, 0x6

    #@1
    .line 25
    new-array v1, v1, [Ljava/lang/String;

    #@3
    const/4 v2, 0x0

    #@4
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "t="

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    aput-object v3, v1, v2

    #@1a
    const/4 v2, 0x1

    #@1b
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v4, "tw="

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    aput-object v3, v1, v2

    #@31
    const/4 v2, 0x2

    #@32
    new-instance v3, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v4, "tf="

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    aput-object v3, v1, v2

    #@48
    const/4 v2, 0x3

    #@49
    new-instance v3, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v4, "tl="

    #@51
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5c
    move-result-object v3

    #@5d
    aput-object v3, v1, v2

    #@5f
    const/4 v2, 0x4

    #@60
    new-instance v3, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v4, "n="

    #@68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v3

    #@70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@73
    move-result-object v3

    #@74
    aput-object v3, v1, v2

    #@76
    const/4 v2, 0x5

    #@77
    new-instance v3, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v4, "b="

    #@7f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v3

    #@83
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    aput-object v3, v1, v2

    #@8d
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->createEventTuple([Ljava/lang/String;)Ljava/lang/String;

    #@90
    move-result-object v0

    #@91
    .local v0, "eventData":Ljava/lang/String;
    const-string/jumbo v1, "TL"

    #@94
    .line 32
    const/16 v2, 0x16

    #@96
    invoke-static {v2, v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    #@99
    .line 34
    return-void
.end method
