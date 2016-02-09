.class public Lorg/apache/http/conn/HttpHostConnectException;
.super Ljava/net/ConnectException;
.source "HttpHostConnectException.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2c5515199314e300L


# instance fields
.field private final host:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V
    .locals 2
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "cause"    # Ljava/net/ConnectException;

    #@0
    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Connection to "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " refused"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-direct {p0, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    #@1e
    .line 54
    iput-object p1, p0, Lorg/apache/http/conn/HttpHostConnectException;->host:Lorg/apache/http/HttpHost;

    #@20
    .line 55
    invoke-virtual {p0, p2}, Lorg/apache/http/conn/HttpHostConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@23
    .line 52
    return-void
.end method


# virtual methods
.method public getHost()Lorg/apache/http/HttpHost;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/conn/HttpHostConnectException;->host:Lorg/apache/http/HttpHost;

    #@2
    return-object v0
.end method
