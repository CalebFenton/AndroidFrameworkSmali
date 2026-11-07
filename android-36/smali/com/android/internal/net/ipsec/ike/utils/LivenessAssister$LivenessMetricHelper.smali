.class Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;
.super Ljava/lang/Object;
.source "LivenessAssister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LivenessMetricHelper"
.end annotation


# instance fields
.field private final blacklist mMetricsCallback:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$IIkeMetricsCallback;

.field private blacklist mNumberOfOnGoing:I

.field private blacklist mTimeInMillisStartedStatus:J


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$IIkeMetricsCallback;)V
    .registers 2
    .param p1, "metricsCallback"    # Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$IIkeMetricsCallback;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->clearVariables()V

    .line 195
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->mMetricsCallback:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$IIkeMetricsCallback;

    .line 196
    return-void
.end method

.method private blacklist clearVariables()V
    .registers 3

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->mTimeInMillisStartedStatus:J

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->mNumberOfOnGoing:I

    .line 201
    return-void
.end method

.method private blacklist onLivenessCheckCompleted(Z)V
    .registers 8
    .param p1, "resultSuccess"    # Z

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->mTimeInMillisStartedStatus:J

    sub-long/2addr v0, v2

    .line 225
    .local v0, "elapsedTimeInMillis":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_21

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_15

    goto :goto_21

    .line 235
    :cond_15
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->mMetricsCallback:Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$IIkeMetricsCallback;

    long-to-int v3, v0

    iget v4, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->mNumberOfOnGoing:I

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$IIkeMetricsCallback;->onLivenessCheckCompleted(IIZ)V

    .line 237
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->clearVariables()V

    .line 238
    return-void

    .line 226
    :cond_21
    :goto_21
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLivenessCheckCompleted, time exceeded failed. timeInMillies:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 227
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->clearVariables()V

    .line 232
    return-void
.end method


# virtual methods
.method public blacklist recordLivenessStatus(I)V
    .registers 4
    .param p1, "status"    # I

    .line 204
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_20

    goto :goto_1e

    .line 218
    :pswitch_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->onLivenessCheckCompleted(Z)V

    goto :goto_1e

    .line 215
    :pswitch_a
    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->onLivenessCheckCompleted(Z)V

    .line 216
    goto :goto_1e

    .line 212
    :pswitch_e
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->mNumberOfOnGoing:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->mNumberOfOnGoing:I

    .line 213
    goto :goto_1e

    .line 207
    :pswitch_14
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->clearVariables()V

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/net/ipsec/ike/utils/LivenessAssister$LivenessMetricHelper;->mTimeInMillisStartedStatus:J

    .line 209
    nop

    .line 221
    :goto_1e
    return-void

    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_14
        :pswitch_e
        :pswitch_14
        :pswitch_e
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method
