.class public Landroid/net/http/LoggingEventHandler;
.super Ljava/lang/Object;
.source "LoggingEventHandler.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public certificate(Landroid/net/http/SslCertificate;)V
    .locals 0
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;

    #@0
    .prologue
    .line 69
    return-void
.end method

.method public data([BI)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "len"    # I

    #@0
    .prologue
    .line 57
    return-void
.end method

.method public endData()V
    .locals 0

    #@0
    .prologue
    .line 63
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 75
    return-void
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .locals 1
    .param p1, "error"    # Landroid/net/http/SslError;

    #@0
    .prologue
    .line 87
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public headers(Landroid/net/http/Headers;)V
    .locals 0
    .param p1, "headers"    # Landroid/net/http/Headers;

    #@0
    .prologue
    .line 43
    return-void
.end method

.method public locationChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "newLocation"    # Ljava/lang/String;
    .param p2, "permanent"    # Z

    #@0
    .prologue
    .line 50
    return-void
.end method

.method public requestSent()V
    .locals 1

    #@0
    .prologue
    .line 28
    const-string/jumbo v0, "LoggingEventHandler:requestSent()"

    #@3
    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    #@6
    .line 27
    return-void
.end method

.method public status(IIILjava/lang/String;)V
    .locals 0
    .param p1, "major_version"    # I
    .param p2, "minor_version"    # I
    .param p3, "code"    # I
    .param p4, "reason_phrase"    # Ljava/lang/String;

    #@0
    .prologue
    .line 34
    return-void
.end method
