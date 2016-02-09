.class public abstract Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;
.super Lorg/apache/http/impl/conn/AbstractClientConnAdapter;
.source "AbstractPooledConnAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected volatile poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;


# direct methods
.method protected constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V
    .locals 1
    .param p1, "manager"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "entry"    # Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@0
    .prologue
    .line 82
    iget-object v0, p2, Lorg/apache/http/impl/conn/AbstractPoolEntry;->connection:Lorg/apache/http/conn/OperatedClientConnection;

    #@2
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/conn/OperatedClientConnection;)V

    #@5
    .line 83
    iput-object p2, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@7
    .line 81
    return-void
.end method


# virtual methods
.method protected final assertAttached()V
    .locals 2

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Adapter is detached."

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 93
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 158
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 159
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@6
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    #@9
    .line 161
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@c
    move-result-object v0

    #@d
    .line 162
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    if-eqz v0, :cond_1

    #@f
    .line 163
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->close()V

    #@12
    .line 157
    :cond_1
    return-void
.end method

.method protected detach()V
    .locals 1

    #@0
    .prologue
    .line 105
    invoke-super {p0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->detach()V

    #@3
    .line 106
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@6
    .line 104
    return-void
.end method

.method public getRoute()Lorg/apache/http/conn/routing/HttpRoute;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 113
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    #@4
    .line 114
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@6
    iget-object v1, v1, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    #@8
    if-nez v1, :cond_0

    #@a
    :goto_0
    return-object v0

    #@b
    .line 115
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@d
    iget-object v0, v0, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tracker:Lorg/apache/http/conn/routing/RouteTracker;

    #@f
    invoke-virtual {v0}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    #@12
    move-result-object v0

    #@13
    goto :goto_0
.end method

.method public getState()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    #@3
    .line 182
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@5
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->getState()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    #@3
    .line 151
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@5
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->layerProtocol(Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    #@8
    .line 148
    return-void
.end method

.method public open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    #@3
    .line 124
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->open(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    #@8
    .line 121
    return-void
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 188
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    #@3
    .line 189
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@5
    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->setState(Ljava/lang/Object;)V

    #@8
    .line 187
    return-void
.end method

.method public shutdown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 169
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 170
    iget-object v1, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@6
    invoke-virtual {v1}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    #@9
    .line 172
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->getWrappedConnection()Lorg/apache/http/conn/OperatedClientConnection;

    #@c
    move-result-object v0

    #@d
    .line 173
    .local v0, "conn":Lorg/apache/http/conn/OperatedClientConnection;
    if-eqz v0, :cond_1

    #@f
    .line 174
    invoke-interface {v0}, Lorg/apache/http/conn/OperatedClientConnection;->shutdown()V

    #@12
    .line 168
    :cond_1
    return-void
.end method

.method public tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "next"    # Lorg/apache/http/HttpHost;
    .param p2, "secure"    # Z
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    #@3
    .line 142
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@5
    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tunnelProxy(Lorg/apache/http/HttpHost;ZLorg/apache/http/params/HttpParams;)V

    #@8
    .line 139
    return-void
.end method

.method public tunnelTarget(ZLorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "secure"    # Z
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->assertAttached()V

    #@3
    .line 133
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    #@5
    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPoolEntry;->tunnelTarget(ZLorg/apache/http/params/HttpParams;)V

    #@8
    .line 130
    return-void
.end method
