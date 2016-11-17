.class public final Lorg/apache/http/conn/params/ConnManagerParams;
.super Ljava/lang/Object;
.source "ConnManagerParams.java"

# interfaces
.implements Lorg/apache/http/conn/params/ConnManagerPNames;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/conn/params/ConnManagerParams$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_CONN_PER_ROUTE:Lorg/apache/http/conn/params/ConnPerRoute;

.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 89
    new-instance v0, Lorg/apache/http/conn/params/ConnManagerParams$1;

    #@2
    invoke-direct {v0}, Lorg/apache/http/conn/params/ConnManagerParams$1;-><init>()V

    #@5
    sput-object v0, Lorg/apache/http/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lorg/apache/http/conn/params/ConnPerRoute;

    #@7
    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/conn/params/ConnPerRoute;
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 125
    if-nez p0, :cond_0

    #@2
    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    .line 127
    const-string/jumbo v2, "HTTP parameters must not be null."

    #@7
    .line 126
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 129
    :cond_0
    const-string/jumbo v1, "http.conn-manager.max-per-route"

    #@e
    invoke-interface {p0, v1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lorg/apache/http/conn/params/ConnPerRoute;

    #@14
    .line 130
    .local v0, "connPerRoute":Lorg/apache/http/conn/params/ConnPerRoute;
    if-nez v0, :cond_1

    #@16
    .line 131
    sget-object v0, Lorg/apache/http/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lorg/apache/http/conn/params/ConnPerRoute;

    #@18
    .line 133
    :cond_1
    return-object v0
.end method

.method public static getMaxTotalConnections(Lorg/apache/http/params/HttpParams;)I
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 166
    if-nez p0, :cond_0

    #@2
    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 168
    const-string/jumbo v1, "HTTP parameters must not be null."

    #@7
    .line 167
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 170
    :cond_0
    const-string/jumbo v0, "http.conn-manager.max-total"

    #@e
    const/16 v1, 0x14

    #@10
    invoke-interface {p0, v0, v1}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public static getTimeout(Lorg/apache/http/params/HttpParams;)J
    .locals 4
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 68
    if-nez p0, :cond_0

    #@2
    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 71
    :cond_0
    const-string/jumbo v0, "http.conn-manager.timeout"

    #@e
    const-wide/16 v2, 0x0

    #@10
    invoke-interface {p0, v0, v2, v3}, Lorg/apache/http/params/HttpParams;->getLongParameter(Ljava/lang/String;J)J

    #@13
    move-result-wide v0

    #@14
    return-wide v0
.end method

.method public static setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "connPerRoute"    # Lorg/apache/http/conn/params/ConnPerRoute;

    #@0
    .prologue
    .line 108
    if-nez p0, :cond_0

    #@2
    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 110
    const-string/jumbo v1, "HTTP parameters must not be null."

    #@7
    .line 109
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 112
    :cond_0
    const-string/jumbo v0, "http.conn-manager.max-per-route"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@11
    .line 107
    return-void
.end method

.method public static setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V
    .locals 2
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "maxTotalConnections"    # I

    #@0
    .prologue
    .line 148
    if-nez p0, :cond_0

    #@2
    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    .line 150
    const-string/jumbo v1, "HTTP parameters must not be null."

    #@7
    .line 149
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 152
    :cond_0
    const-string/jumbo v0, "http.conn-manager.max-total"

    #@e
    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    #@11
    .line 147
    return-void
.end method

.method public static setTimeout(Lorg/apache/http/params/HttpParams;J)V
    .locals 3
    .param p0, "params"    # Lorg/apache/http/params/HttpParams;
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 82
    if-nez p0, :cond_0

    #@2
    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "HTTP parameters may not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 85
    :cond_0
    const-string/jumbo v0, "http.conn-manager.timeout"

    #@e
    invoke-interface {p0, v0, p1, p2}, Lorg/apache/http/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;

    #@11
    .line 81
    return-void
.end method
