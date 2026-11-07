.class public final Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;
.super Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;
.source "CronetMetrics.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist mConnectEndMs:J

.field private final blacklist mConnectStartMs:J

.field private final blacklist mDnsEndMs:J

.field private final blacklist mDnsStartMs:J

.field private final blacklist mPushEndMs:J

.field private final blacklist mPushStartMs:J

.field private final blacklist mReceivedByteCount:Ljava/lang/Long;

.field private final blacklist mRequestEndMs:J

.field private final blacklist mRequestStartMs:J

.field private final blacklist mResponseStartMs:J

.field private final blacklist mSendingEndMs:J

.field private final blacklist mSendingStartMs:J

.field private final blacklist mSentByteCount:Ljava/lang/Long;

.field private final blacklist mSocketReused:Z

.field private final blacklist mSslEndMs:J

.field private final blacklist mSslStartMs:J

.field private final blacklist mTotalTimeMs:Ljava/lang/Long;

.field private final blacklist mTtfbMs:Ljava/lang/Long;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 15
    return-void
.end method

.method public constructor blacklist <init>(JJJJJJJJJJJJJZJJ)V
    .registers 53
    .param p1, "requestStartMs"    # J
    .param p3, "dnsStartMs"    # J
    .param p5, "dnsEndMs"    # J
    .param p7, "connectStartMs"    # J
    .param p9, "connectEndMs"    # J
    .param p11, "sslStartMs"    # J
    .param p13, "sslEndMs"    # J
    .param p15, "sendingStartMs"    # J
    .param p17, "sendingEndMs"    # J
    .param p19, "pushStartMs"    # J
    .param p21, "pushEndMs"    # J
    .param p23, "responseStartMs"    # J
    .param p25, "requestEndMs"    # J
    .param p27, "socketReused"    # Z
    .param p28, "sentByteCount"    # J
    .param p30, "receivedByteCount"    # J

    .line 101
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p23

    move-wide/from16 v5, p25

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;-><init>()V

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 108
    nop

    .line 110
    nop

    .line 112
    nop

    .line 113
    nop

    .line 114
    nop

    .line 115
    nop

    .line 116
    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mRequestStartMs:J

    .line 117
    move-wide/from16 v7, p3

    iput-wide v7, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mDnsStartMs:J

    .line 118
    move-wide/from16 v9, p5

    iput-wide v9, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mDnsEndMs:J

    .line 119
    move-wide/from16 v11, p7

    iput-wide v11, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mConnectStartMs:J

    .line 120
    move-wide/from16 v13, p9

    iput-wide v13, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mConnectEndMs:J

    .line 121
    move-wide/from16 v1, p11

    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSslStartMs:J

    .line 122
    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSslEndMs:J

    .line 123
    move-wide/from16 v1, p15

    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSendingStartMs:J

    .line 124
    move-wide/from16 v1, p17

    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSendingEndMs:J

    .line 125
    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mPushStartMs:J

    .line 126
    move-wide/from16 v1, p21

    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mPushEndMs:J

    .line 127
    iput-wide v3, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mResponseStartMs:J

    .line 128
    iput-wide v5, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mRequestEndMs:J

    .line 129
    move/from16 v15, p27

    iput-boolean v15, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSocketReused:Z

    .line 130
    invoke-static/range {p28 .. p29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSentByteCount:Ljava/lang/Long;

    .line 131
    invoke-static/range {p30 .. p31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mReceivedByteCount:Ljava/lang/Long;

    .line 134
    const-wide/16 v1, -0x1

    cmp-long v16, p1, v1

    move-wide/from16 v17, v1

    const/4 v1, 0x0

    if-eqz v16, :cond_69

    cmp-long v2, v3, v17

    if-eqz v2, :cond_69

    .line 135
    sub-long v19, v3, p1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mTtfbMs:Ljava/lang/Long;

    goto :goto_6b

    .line 137
    :cond_69
    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mTtfbMs:Ljava/lang/Long;

    .line 139
    :goto_6b
    cmp-long v2, p1, v17

    if-eqz v2, :cond_7c

    cmp-long v2, v5, v17

    if-eqz v2, :cond_7c

    .line 140
    sub-long v1, v5, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mTotalTimeMs:Ljava/lang/Long;

    goto :goto_7e

    .line 142
    :cond_7c
    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mTotalTimeMs:Ljava/lang/Long;

    .line 144
    :goto_7e
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .registers 7
    .param p1, "ttfbMs"    # Ljava/lang/Long;
    .param p2, "totalTimeMs"    # Ljava/lang/Long;
    .param p3, "sentByteCount"    # Ljava/lang/Long;
    .param p4, "receivedByteCount"    # Ljava/lang/Long;

    .line 61
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestFinishedInfo$Metrics;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mTtfbMs:Ljava/lang/Long;

    .line 63
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mTotalTimeMs:Ljava/lang/Long;

    .line 64
    iput-object p3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSentByteCount:Ljava/lang/Long;

    .line 65
    iput-object p4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mReceivedByteCount:Ljava/lang/Long;

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mRequestStartMs:J

    .line 69
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mDnsStartMs:J

    .line 70
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mDnsEndMs:J

    .line 71
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mConnectStartMs:J

    .line 72
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mConnectEndMs:J

    .line 73
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSslStartMs:J

    .line 74
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSslEndMs:J

    .line 75
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSendingStartMs:J

    .line 76
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSendingEndMs:J

    .line 77
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mPushStartMs:J

    .line 78
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mPushEndMs:J

    .line 79
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mResponseStartMs:J

    .line 80
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mRequestEndMs:J

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSocketReused:Z

    .line 82
    return-void
.end method

.method private static blacklist checkOrder(JJ)Z
    .registers 7
    .param p0, "start"    # J
    .param p2, "end"    # J

    .line 50
    cmp-long v0, p2, p0

    const-wide/16 v1, -0x1

    if-ltz v0, :cond_a

    cmp-long v0, p0, v1

    if-nez v0, :cond_e

    :cond_a
    cmp-long v0, p2, v1

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static blacklist toDate(J)Ljava/util/Date;
    .registers 4
    .param p0, "timestamp"    # J

    .line 41
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_c

    .line 42
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 44
    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getConnectEnd()Ljava/util/Date;
    .registers 3

    .line 173
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mConnectEndMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getConnectStart()Ljava/util/Date;
    .registers 3

    .line 167
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mConnectStartMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDnsEnd()Ljava/util/Date;
    .registers 3

    .line 161
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mDnsEndMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDnsStart()Ljava/util/Date;
    .registers 3

    .line 155
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mDnsStartMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPushEnd()Ljava/util/Date;
    .registers 3

    .line 209
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mPushEndMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPushStart()Ljava/util/Date;
    .registers 3

    .line 203
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mPushStartMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getReceivedByteCount()Ljava/lang/Long;
    .registers 2

    .line 250
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mReceivedByteCount:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getRequestEnd()Ljava/util/Date;
    .registers 3

    .line 221
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mRequestEndMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRequestStart()Ljava/util/Date;
    .registers 3

    .line 149
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mRequestStartMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResponseStart()Ljava/util/Date;
    .registers 3

    .line 215
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mResponseStartMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSendingEnd()Ljava/util/Date;
    .registers 3

    .line 197
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSendingEndMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSendingStart()Ljava/util/Date;
    .registers 3

    .line 191
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSendingStartMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSentByteCount()Ljava/lang/Long;
    .registers 2

    .line 244
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSentByteCount:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getSocketReused()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSocketReused:Z

    return v0
.end method

.method public blacklist getSslEnd()Ljava/util/Date;
    .registers 3

    .line 185
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSslEndMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSslStart()Ljava/util/Date;
    .registers 3

    .line 179
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mSslStartMs:J

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->toDate(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTotalTimeMs()Ljava/lang/Long;
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mTotalTimeMs:Ljava/lang/Long;

    return-object v0
.end method

.method public blacklist getTtfbMs()Ljava/lang/Long;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetMetrics;->mTtfbMs:Ljava/lang/Long;

    return-object v0
.end method
