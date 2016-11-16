.class Lsun/net/www/http/KeepAliveCleanerEntry;
.super Ljava/lang/Object;
.source "KeepAliveStream.java"


# instance fields
.field hc:Lsun/net/www/http/HttpClient;

.field kas:Lsun/net/www/http/KeepAliveStream;


# direct methods
.method public constructor <init>(Lsun/net/www/http/KeepAliveStream;Lsun/net/www/http/HttpClient;)V
    .locals 0
    .param p1, "kas"    # Lsun/net/www/http/KeepAliveStream;
    .param p2, "hc"    # Lsun/net/www/http/HttpClient;

    #@0
    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 217
    iput-object p1, p0, Lsun/net/www/http/KeepAliveCleanerEntry;->kas:Lsun/net/www/http/KeepAliveStream;

    #@5
    .line 218
    iput-object p2, p0, Lsun/net/www/http/KeepAliveCleanerEntry;->hc:Lsun/net/www/http/HttpClient;

    #@7
    .line 216
    return-void
.end method


# virtual methods
.method protected getHttpClient()Lsun/net/www/http/HttpClient;
    .locals 1

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Lsun/net/www/http/KeepAliveCleanerEntry;->hc:Lsun/net/www/http/HttpClient;

    #@2
    return-object v0
.end method

.method protected getKeepAliveStream()Lsun/net/www/http/KeepAliveStream;
    .locals 1

    #@0
    .prologue
    .line 222
    iget-object v0, p0, Lsun/net/www/http/KeepAliveCleanerEntry;->kas:Lsun/net/www/http/KeepAliveStream;

    #@2
    return-object v0
.end method

.method protected getQueuedForCleanup()Z
    .locals 1

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lsun/net/www/http/KeepAliveCleanerEntry;->kas:Lsun/net/www/http/KeepAliveStream;

    #@2
    iget-boolean v0, v0, Lsun/net/www/http/KeepAliveStream;->queuedForCleanup:Z

    #@4
    return v0
.end method

.method protected setQueuedForCleanup()V
    .locals 2

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Lsun/net/www/http/KeepAliveCleanerEntry;->kas:Lsun/net/www/http/KeepAliveStream;

    #@2
    const/4 v1, 0x1

    #@3
    iput-boolean v1, v0, Lsun/net/www/http/KeepAliveStream;->queuedForCleanup:Z

    #@5
    .line 229
    return-void
.end method
