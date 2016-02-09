.class public Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;
.super Lorg/ksoap2/transport/HttpsTransportSE;
.source "KeepAliveHttpsTransportSE.java"


# instance fields
.field private final file:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final port:I

.field private serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

.field private final timeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/ksoap2/transport/HttpsTransportSE;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@3
    .line 35
    iput-object p1, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->host:Ljava/lang/String;

    #@5
    .line 36
    iput p2, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->port:I

    #@7
    .line 37
    iput-object p3, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->file:Ljava/lang/String;

    #@9
    .line 38
    iput p4, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->timeout:I

    #@b
    .line 33
    return-void
.end method


# virtual methods
.method public getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 51
    new-instance v0, Lorg/ksoap2/transport/HttpsServiceConnectionSEIgnoringConnectionClose;

    #@6
    iget-object v1, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->host:Ljava/lang/String;

    #@8
    iget v2, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->port:I

    #@a
    .line 52
    iget-object v3, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->file:Ljava/lang/String;

    #@c
    iget v4, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->timeout:I

    #@e
    .line 51
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ksoap2/transport/HttpsServiceConnectionSEIgnoringConnectionClose;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@11
    iput-object v0, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    #@13
    .line 53
    iget-object v0, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    #@15
    const-string/jumbo v1, "Connection"

    #@18
    const-string/jumbo v2, "keep-alive"

    #@1b
    invoke-interface {v0, v1, v2}, Lorg/ksoap2/transport/ServiceConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 55
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/transport/KeepAliveHttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    #@20
    return-object v0
.end method
