.class public Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
.super Ljava/lang/Object;
.source "HttpTransportMetricsImpl.java"

# interfaces
.implements Lorg/apache/http/io/HttpTransportMetrics;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bytesTransferred:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    #@7
    .line 48
    return-void
.end method


# virtual methods
.method public getBytesTransferred()J
    .locals 2

    #@0
    .prologue
    .line 53
    iget-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    #@2
    return-wide v0
.end method

.method public incrementBytesTransferred(J)V
    .locals 3
    .param p1, "count"    # J

    #@0
    .prologue
    .line 61
    iget-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    #@2
    add-long/2addr v0, p1

    #@3
    iput-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    #@5
    .line 60
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 65
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    #@4
    .line 64
    return-void
.end method

.method public setBytesTransferred(J)V
    .locals 1
    .param p1, "count"    # J

    #@0
    .prologue
    .line 57
    iput-wide p1, p0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->bytesTransferred:J

    #@2
    .line 56
    return-void
.end method
