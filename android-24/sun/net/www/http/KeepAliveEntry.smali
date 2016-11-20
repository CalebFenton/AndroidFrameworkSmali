.class Lsun/net/www/http/KeepAliveEntry;
.super Ljava/lang/Object;
.source "KeepAliveCache.java"


# instance fields
.field hc:Lsun/net/www/http/HttpClient;

.field idleStartTime:J


# direct methods
.method constructor <init>(Lsun/net/www/http/HttpClient;J)V
    .locals 0
    .param p1, "hc"    # Lsun/net/www/http/HttpClient;
    .param p2, "idleStartTime"    # J

    #@0
    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 344
    iput-object p1, p0, Lsun/net/www/http/KeepAliveEntry;->hc:Lsun/net/www/http/HttpClient;

    #@5
    .line 345
    iput-wide p2, p0, Lsun/net/www/http/KeepAliveEntry;->idleStartTime:J

    #@7
    .line 343
    return-void
.end method
