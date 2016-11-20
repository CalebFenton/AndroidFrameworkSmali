.class public abstract Lorg/apache/http/params/AbstractHttpParams;
.super Ljava/lang/Object;
.source "AbstractHttpParams.java"

# interfaces
.implements Lorg/apache/http/params/HttpParams;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    return-void
.end method


# virtual methods
.method public getBooleanParameter(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    #@0
    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lorg/apache/http/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 102
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    .line 103
    return p2

    #@7
    .line 105
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    #@9
    .end local v0    # "param":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public getDoubleParameter(Ljava/lang/String;D)D
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    #@0
    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/http/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 89
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    .line 90
    return-wide p2

    #@7
    .line 92
    :cond_0
    check-cast v0, Ljava/lang/Double;

    #@9
    .end local v0    # "param":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    #@c
    move-result-wide v2

    #@d
    return-wide v2
.end method

.method public getIntParameter(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lorg/apache/http/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 76
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    .line 77
    return p2

    #@7
    .line 79
    :cond_0
    check-cast v0, Ljava/lang/Integer;

    #@9
    .end local v0    # "param":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public getLongParameter(Ljava/lang/String;J)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    #@0
    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lorg/apache/http/params/AbstractHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 63
    .local v0, "param":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@6
    .line 64
    return-wide p2

    #@7
    .line 66
    :cond_0
    check-cast v0, Ljava/lang/Long;

    #@9
    .end local v0    # "param":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@c
    move-result-wide v2

    #@d
    return-wide v2
.end method

.method public isParameterFalse(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 118
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x1

    #@9
    goto :goto_0
.end method

.method public isParameterTrue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 114
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->getBooleanParameter(Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    #@0
    .prologue
    .line 109
    if-eqz p2, :cond_0

    #@2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@4
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@7
    .line 110
    return-object p0

    #@8
    .line 109
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@a
    goto :goto_0
.end method

.method public setDoubleParameter(Ljava/lang/String;D)Lorg/apache/http/params/HttpParams;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/lang/Double;

    #@2
    invoke-direct {v0, p2, p3}, Ljava/lang/Double;-><init>(D)V

    #@5
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 97
    return-object p0
.end method

.method public setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    #@0
    .prologue
    .line 83
    new-instance v0, Ljava/lang/Integer;

    #@2
    invoke-direct {v0, p2}, Ljava/lang/Integer;-><init>(I)V

    #@5
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 84
    return-object p0
.end method

.method public setLongParameter(Ljava/lang/String;J)Lorg/apache/http/params/HttpParams;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    #@0
    .prologue
    .line 70
    new-instance v0, Ljava/lang/Long;

    #@2
    invoke-direct {v0, p2, p3}, Ljava/lang/Long;-><init>(J)V

    #@5
    invoke-virtual {p0, p1, v0}, Lorg/apache/http/params/AbstractHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@8
    .line 71
    return-object p0
.end method
