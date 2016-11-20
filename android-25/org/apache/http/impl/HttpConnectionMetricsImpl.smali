.class public Lorg/apache/http/impl/HttpConnectionMetricsImpl;
.super Ljava/lang/Object;
.source "HttpConnectionMetricsImpl.java"

# interfaces
.implements Lorg/apache/http/HttpConnectionMetrics;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final RECEIVED_BYTES_COUNT:Ljava/lang/String; = "http.received-bytes-count"

.field public static final REQUEST_COUNT:Ljava/lang/String; = "http.request-count"

.field public static final RESPONSE_COUNT:Ljava/lang/String; = "http.response-count"

.field public static final SENT_BYTES_COUNT:Ljava/lang/String; = "http.sent-bytes-count"


# instance fields
.field private final inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

.field private metricsCache:Ljava/util/HashMap;

.field private final outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

.field private requestCount:J

.field private responseCount:J


# direct methods
.method public constructor <init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V
    .locals 2
    .param p1, "inTransportMetric"    # Lorg/apache/http/io/HttpTransportMetrics;
    .param p2, "outTransportMetric"    # Lorg/apache/http/io/HttpTransportMetrics;

    #@0
    .prologue
    const-wide/16 v0, 0x0

    #@2
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 55
    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    #@7
    .line 56
    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    #@9
    .line 67
    iput-object p1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@b
    .line 68
    iput-object p2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@d
    .line 65
    return-void
.end method


# virtual methods
.method public getMetric(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "metricName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 106
    const/4 v0, 0x0

    #@2
    .line 107
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 108
    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    .line 110
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_1

    #@e
    .line 111
    const-string/jumbo v1, "http.request-count"

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 112
    new-instance v0, Ljava/lang/Long;

    #@19
    iget-wide v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    #@1b
    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@1e
    .line 129
    :cond_1
    :goto_0
    return-object v0

    #@1f
    .line 113
    :cond_2
    const-string/jumbo v1, "http.response-count"

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 114
    new-instance v0, Ljava/lang/Long;

    #@2a
    iget-wide v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    #@2c
    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@2f
    .restart local v0    # "value":Ljava/lang/Object;
    goto :goto_0

    #@30
    .line 115
    .end local v0    # "value":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v1, "http.received-bytes-count"

    #@33
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_5

    #@39
    .line 116
    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@3b
    if-eqz v1, :cond_4

    #@3d
    .line 117
    new-instance v1, Ljava/lang/Long;

    #@3f
    iget-object v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@41
    invoke-interface {v2}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    #@44
    move-result-wide v2

    #@45
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@48
    return-object v1

    #@49
    .line 119
    :cond_4
    return-object v2

    #@4a
    .line 121
    :cond_5
    const-string/jumbo v1, "http.sent-bytes-count"

    #@4d
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@50
    move-result v1

    #@51
    if-eqz v1, :cond_1

    #@53
    .line 122
    iget-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@55
    if-eqz v1, :cond_6

    #@57
    .line 123
    new-instance v1, Ljava/lang/Long;

    #@59
    iget-object v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@5b
    invoke-interface {v2}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    #@5e
    move-result-wide v2

    #@5f
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    #@62
    return-object v1

    #@63
    .line 125
    :cond_6
    return-object v2
.end method

.method public getReceivedBytesCount()J
    .locals 2

    #@0
    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 75
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@6
    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    #@9
    move-result-wide v0

    #@a
    return-wide v0

    #@b
    .line 77
    :cond_0
    const-wide/16 v0, -0x1

    #@d
    return-wide v0
.end method

.method public getRequestCount()J
    .locals 2

    #@0
    .prologue
    .line 90
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    #@2
    return-wide v0
.end method

.method public getResponseCount()J
    .locals 2

    #@0
    .prologue
    .line 98
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    #@2
    return-wide v0
.end method

.method public getSentBytesCount()J
    .locals 2

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 83
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@6
    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->getBytesTransferred()J

    #@9
    move-result-wide v0

    #@a
    return-wide v0

    #@b
    .line 85
    :cond_0
    const-wide/16 v0, -0x1

    #@d
    return-wide v0
.end method

.method public incrementRequestCount()V
    .locals 4

    #@0
    .prologue
    .line 94
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    #@7
    .line 93
    return-void
.end method

.method public incrementResponseCount()V
    .locals 4

    #@0
    .prologue
    .line 102
    iget-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    add-long/2addr v0, v2

    #@5
    iput-wide v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    #@7
    .line 101
    return-void
.end method

.method public reset()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 140
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 141
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->outTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@9
    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->reset()V

    #@c
    .line 143
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 144
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->inTransportMetric:Lorg/apache/http/io/HttpTransportMetrics;

    #@12
    invoke-interface {v0}, Lorg/apache/http/io/HttpTransportMetrics;->reset()V

    #@15
    .line 146
    :cond_1
    iput-wide v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->requestCount:J

    #@17
    .line 147
    iput-wide v2, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->responseCount:J

    #@19
    .line 148
    iput-object v1, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    #@1b
    .line 139
    return-void
.end method

.method public setMetric(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "metricName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 134
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    #@b
    .line 136
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->metricsCache:Ljava/util/HashMap;

    #@d
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 132
    return-void
.end method
