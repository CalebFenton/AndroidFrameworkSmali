.class public Lgov/nist/javax/sip/header/RouteList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "RouteList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/Route;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f4a3d58ba83ad94L


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 52
    const-class v0, Lgov/nist/javax/sip/header/Route;

    #@2
    const-string/jumbo v1, "Route"

    #@5
    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 51
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 57
    new-instance v0, Lgov/nist/javax/sip/header/RouteList;

    #@2
    invoke-direct {v0}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    #@5
    .line 58
    .local v0, "retval":Lgov/nist/javax/sip/header/RouteList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/RouteList;->hlist:Ljava/util/List;

    #@7
    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RouteList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    #@a
    .line 59
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const-string/jumbo v0, ""

    #@b
    return-object v0

    #@c
    .line 64
    :cond_0
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encode()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 72
    instance-of v5, p1, Lgov/nist/javax/sip/header/RouteList;

    #@3
    if-nez v5, :cond_0

    #@5
    .line 73
    return v7

    #@6
    :cond_0
    move-object v4, p1

    #@7
    .line 74
    check-cast v4, Lgov/nist/javax/sip/header/RouteList;

    #@9
    .line 75
    .local v4, "that":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/RouteList;->size()I

    #@c
    move-result v5

    #@d
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RouteList;->size()I

    #@10
    move-result v6

    #@11
    if-eq v5, v6, :cond_1

    #@13
    .line 76
    return v7

    #@14
    .line 77
    :cond_1
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    #@17
    move-result-object v0

    #@18
    .line 78
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/Route;>;"
    invoke-virtual {v4}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    #@1b
    move-result-object v1

    #@1c
    .line 79
    .local v1, "it1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/Route;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    #@1f
    move-result v5

    #@20
    if-eqz v5, :cond_3

    #@22
    .line 80
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Lgov/nist/javax/sip/header/Route;

    #@28
    .line 81
    .local v2, "route":Lgov/nist/javax/sip/header/Route;
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    check-cast v3, Lgov/nist/javax/sip/header/Route;

    #@2e
    .line 82
    .local v3, "route1":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v2, v3}, Lgov/nist/javax/sip/header/Route;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v5

    #@32
    if-nez v5, :cond_2

    #@34
    .line 83
    return v7

    #@35
    .line 85
    .end local v2    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v3    # "route1":Lgov/nist/javax/sip/header/Route;
    :cond_3
    const/4 v5, 0x1

    #@36
    return v5
.end method
