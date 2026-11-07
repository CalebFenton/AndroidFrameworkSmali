.class Landroid/net/wifi/RttManager$1;
.super Landroid/net/wifi/rtt/RangingResultCallback;
.source "RttManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/RttManager;->startRanging([Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/net/wifi/RttManager$RttListener;


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/RttManager;Landroid/net/wifi/RttManager$RttListener;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/wifi/RttManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 975
    iput-object p2, p0, Landroid/net/wifi/RttManager$1;->val$listener:Landroid/net/wifi/RttManager$RttListener;

    invoke-direct {p0}, Landroid/net/wifi/rtt/RangingResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onRangingFailure(I)V
    .registers 5
    .param p1, "code"    # I

    .line 978
    const/4 v0, -0x1

    .line 979
    .local v0, "localCode":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 980
    const/4 v0, -0x2

    .line 982
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/RttManager$1;->val$listener:Landroid/net/wifi/RttManager$RttListener;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/net/wifi/RttManager$RttListener;->onFailure(ILjava/lang/String;)V

    .line 983
    return-void
.end method

.method public whitelist onRangingResults(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/rtt/RangingResult;",
            ">;)V"
        }
    .end annotation

    .line 987
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/rtt/RangingResult;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/wifi/RttManager$RttResult;

    .line 988
    .local v0, "legacyResults":[Landroid/net/wifi/RttManager$RttResult;
    const/4 v1, 0x0

    .line 989
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/rtt/RangingResult;

    .line 990
    .local v3, "result":Landroid/net/wifi/rtt/RangingResult;
    new-instance v4, Landroid/net/wifi/RttManager$RttResult;

    invoke-direct {v4}, Landroid/net/wifi/RttManager$RttResult;-><init>()V

    aput-object v4, v0, v1

    .line 991
    aget-object v4, v0, v1

    invoke-virtual {v3}, Landroid/net/wifi/rtt/RangingResult;->getStatus()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->status:I

    .line 992
    aget-object v4, v0, v1

    invoke-virtual {v3}, Landroid/net/wifi/rtt/RangingResult;->getMacAddress()Landroid/net/MacAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/RttManager$RttResult;->bssid:Ljava/lang/String;

    .line 993
    invoke-virtual {v3}, Landroid/net/wifi/rtt/RangingResult;->getStatus()I

    move-result v4

    const-wide/16 v5, 0x3e8

    if-nez v4, :cond_72

    .line 994
    aget-object v4, v0, v1

    invoke-virtual {v3}, Landroid/net/wifi/rtt/RangingResult;->getDistanceMm()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    iput v7, v4, Landroid/net/wifi/RttManager$RttResult;->distance:I

    .line 995
    aget-object v4, v0, v1

    .line 996
    invoke-virtual {v3}, Landroid/net/wifi/rtt/RangingResult;->getDistanceStdDevMm()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    iput v7, v4, Landroid/net/wifi/RttManager$RttResult;->distanceStandardDeviation:I

    .line 997
    aget-object v4, v0, v1

    invoke-virtual {v3}, Landroid/net/wifi/rtt/RangingResult;->getRssi()I

    move-result v7

    mul-int/lit8 v7, v7, -0x2

    iput v7, v4, Landroid/net/wifi/RttManager$RttResult;->rssi:I

    .line 998
    aget-object v4, v0, v1

    invoke-virtual {v3}, Landroid/net/wifi/rtt/RangingResult;->getRangingTimestampMillis()J

    move-result-wide v7

    mul-long/2addr v7, v5

    iput-wide v7, v4, Landroid/net/wifi/RttManager$RttResult;->ts:J

    .line 999
    aget-object v4, v0, v1

    .line 1000
    invoke-virtual {v3}, Landroid/net/wifi/rtt/RangingResult;->getNumAttemptedMeasurements()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->measurementFrameNumber:I

    .line 1001
    aget-object v4, v0, v1

    .line 1002
    invoke-virtual {v3}, Landroid/net/wifi/rtt/RangingResult;->getNumSuccessfulMeasurements()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/RttManager$RttResult;->successMeasurementFrameNumber:I

    goto :goto_7b

    .line 1005
    :cond_72
    aget-object v4, v0, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    mul-long/2addr v7, v5

    iput-wide v7, v4, Landroid/net/wifi/RttManager$RttResult;->ts:J

    .line 1007
    :goto_7b
    nop

    .end local v3    # "result":Landroid/net/wifi/rtt/RangingResult;
    add-int/lit8 v1, v1, 0x1

    .line 1008
    goto :goto_b

    .line 1009
    :cond_7f
    iget-object v2, p0, Landroid/net/wifi/RttManager$1;->val$listener:Landroid/net/wifi/RttManager$RttListener;

    invoke-interface {v2, v0}, Landroid/net/wifi/RttManager$RttListener;->onSuccess([Landroid/net/wifi/RttManager$RttResult;)V

    .line 1010
    return-void
.end method
