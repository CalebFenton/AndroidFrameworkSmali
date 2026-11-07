.class public Lgov/nist/javax/sip/header/RouteList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "RouteList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList<",
        "Lgov/nist/javax/sip/header/Route;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x2f4a3d58ba83ad94L


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 52
    const-class v0, Lgov/nist/javax/sip/header/Route;

    const-string v1, "Route"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 57
    new-instance v0, Lgov/nist/javax/sip/header/RouteList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/RouteList;-><init>()V

    .line 58
    .local v0, "retval":Lgov/nist/javax/sip/header/RouteList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/RouteList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/RouteList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 59
    return-object v0
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    .line 64
    :cond_b
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 72
    instance-of v0, p1, Lgov/nist/javax/sip/header/RouteList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 73
    return v1

    .line 74
    :cond_6
    move-object v0, p1

    check-cast v0, Lgov/nist/javax/sip/header/RouteList;

    .line 75
    .local v0, "that":Lgov/nist/javax/sip/header/RouteList;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/RouteList;->size()I

    move-result v2

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->size()I

    move-result v3

    if-eq v2, v3, :cond_14

    .line 76
    return v1

    .line 77
    :cond_14
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 78
    .local v2, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/Route;>;"
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 79
    .local v3, "it1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/Route;>;"
    :goto_1c
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 80
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/Route;

    .line 81
    .local v4, "route":Lgov/nist/javax/sip/header/Route;
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/javax/sip/header/Route;

    .line 82
    .local v5, "route1":Lgov/nist/javax/sip/header/Route;
    invoke-virtual {v4, v5}, Lgov/nist/javax/sip/header/Route;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    .line 83
    return v1

    .line 84
    .end local v4    # "route":Lgov/nist/javax/sip/header/Route;
    .end local v5    # "route1":Lgov/nist/javax/sip/header/Route;
    :cond_35
    goto :goto_1c

    .line 85
    :cond_36
    const/4 v1, 0x1

    return v1
.end method
