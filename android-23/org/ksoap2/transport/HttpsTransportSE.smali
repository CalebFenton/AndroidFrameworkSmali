.class public Lorg/ksoap2/transport/HttpsTransportSE;
.super Lorg/ksoap2/transport/HttpTransportSE;
.source "HttpsTransportSE.java"


# static fields
.field static final PROTOCOL:Ljava/lang/String; = "https"


# instance fields
.field private final file:Ljava/lang/String;

.field private final host:Ljava/lang/String;

.field private final port:I

.field private serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

.field private final timeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "timeout"    # I

    #@0
    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "https://"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ":"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-direct {p0, v0}, Lorg/ksoap2/transport/HttpTransportSE;-><init>(Ljava/lang/String;)V

    #@26
    .line 18
    const/4 v0, 0x0

    #@27
    iput-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    #@29
    .line 26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2b
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v2, "Establistion connection to: https://"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    .line 27
    const-string/jumbo v2, ":"

    #@3e
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@51
    .line 28
    iput-object p1, p0, Lorg/ksoap2/transport/HttpsTransportSE;->host:Ljava/lang/String;

    #@53
    .line 29
    iput p2, p0, Lorg/ksoap2/transport/HttpsTransportSE;->port:I

    #@55
    .line 30
    iput-object p3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->file:Ljava/lang/String;

    #@57
    .line 31
    iput p4, p0, Lorg/ksoap2/transport/HttpsTransportSE;->timeout:I

    #@59
    .line 24
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 48
    const/4 v1, 0x0

    #@1
    .line 51
    .local v1, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    #@3
    iget-object v3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->url:Ljava/lang/String;

    #@5
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 56
    .end local v1    # "retVal":Ljava/lang/String;
    :goto_0
    return-object v1

    #@d
    .line 52
    .restart local v1    # "retVal":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@e
    .line 53
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    #@11
    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 74
    const/4 v1, 0x0

    #@1
    .line 77
    .local v1, "retVal":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    #@3
    iget-object v3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->url:Ljava/lang/String;

    #@5
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 82
    .end local v1    # "retVal":Ljava/lang/String;
    :goto_0
    return-object v1

    #@d
    .line 78
    .restart local v1    # "retVal":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@e
    .line 79
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    #@11
    goto :goto_0
.end method

.method public getPort()I
    .locals 4

    #@0
    .prologue
    .line 61
    const/4 v1, -0x1

    #@1
    .line 64
    .local v1, "retVal":I
    :try_start_0
    new-instance v2, Ljava/net/URL;

    #@3
    iget-object v3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->url:Ljava/lang/String;

    #@5
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    #@8
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    .line 69
    :goto_0
    return v1

    #@d
    .line 65
    :catch_0
    move-exception v0

    #@e
    .line 66
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    #@11
    goto :goto_0
.end method

.method public getServiceConnection()Lorg/ksoap2/transport/ServiceConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 41
    new-instance v0, Lorg/ksoap2/transport/HttpsServiceConnectionSE;

    #@6
    iget-object v1, p0, Lorg/ksoap2/transport/HttpsTransportSE;->host:Ljava/lang/String;

    #@8
    iget v2, p0, Lorg/ksoap2/transport/HttpsTransportSE;->port:I

    #@a
    iget-object v3, p0, Lorg/ksoap2/transport/HttpsTransportSE;->file:Ljava/lang/String;

    #@c
    iget v4, p0, Lorg/ksoap2/transport/HttpsTransportSE;->timeout:I

    #@e
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/ksoap2/transport/HttpsServiceConnectionSE;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    #@11
    iput-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    #@13
    .line 43
    :cond_0
    iget-object v0, p0, Lorg/ksoap2/transport/HttpsTransportSE;->serviceConnection:Lorg/ksoap2/transport/ServiceConnection;

    #@15
    return-object v0
.end method
