.class public final Lorg/apache/http/params/BasicHttpParams;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "BasicHttpParams.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6257f1e0a974410fL


# instance fields
.field private parameters:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    #@3
    .line 65
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 124
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@3
    .line 123
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    invoke-super {p0}, Lorg/apache/http/params/AbstractHttpParams;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lorg/apache/http/params/BasicHttpParams;

    #@6
    .line 143
    .local v0, "clone":Lorg/apache/http/params/BasicHttpParams;
    invoke-virtual {p0, v0}, Lorg/apache/http/params/BasicHttpParams;->copyParams(Lorg/apache/http/params/HttpParams;)V

    #@9
    .line 144
    return-object v0
.end method

.method public copy()Lorg/apache/http/params/HttpParams;
    .locals 1

    #@0
    .prologue
    .line 136
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    #@2
    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    #@5
    .line 137
    .local v0, "clone":Lorg/apache/http/params/BasicHttpParams;
    invoke-virtual {p0, v0}, Lorg/apache/http/params/BasicHttpParams;->copyParams(Lorg/apache/http/params/HttpParams;)V

    #@8
    .line 138
    return-object v0
.end method

.method protected copyParams(Lorg/apache/http/params/HttpParams;)V
    .locals 4
    .param p1, "target"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 154
    iget-object v2, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 155
    return-void

    #@5
    .line 157
    :cond_0
    iget-object v2, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@7
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v0

    #@f
    .line 158
    .local v0, "iter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_2

    #@15
    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/util/Map$Entry;

    #@1b
    .line 160
    .local v1, "me":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    instance-of v2, v2, Ljava/lang/String;

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 161
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Ljava/lang/String;

    #@29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    invoke-interface {p1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@30
    goto :goto_0

    #@31
    .line 153
    .end local v1    # "me":Ljava/util/Map$Entry;
    :cond_2
    return-void
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 71
    const/4 v0, 0x0

    #@1
    .line 72
    .local v0, "param":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 73
    iget-object v1, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    .line 75
    .end local v0    # "param":Ljava/lang/Object;
    :cond_0
    return-object v0
.end method

.method public isParameterSet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lorg/apache/http/params/BasicHttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isParameterSetLocally(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 117
    iget-object v1, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@7
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 87
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 88
    return v1

    #@6
    .line 91
    :cond_0
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 92
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 93
    const/4 v0, 0x1

    #@14
    return v0

    #@15
    .line 95
    :cond_1
    return v1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 80
    new-instance v0, Ljava/util/HashMap;

    #@6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@9
    iput-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@b
    .line 82
    :cond_0
    iget-object v0, p0, Lorg/apache/http/params/BasicHttpParams;->parameters:Ljava/util/HashMap;

    #@d
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    .line 83
    return-object p0
.end method

.method public setParameters([Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 107
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 108
    aget-object v1, p1, v0

    #@6
    invoke-virtual {p0, v1, p2}, Lorg/apache/http/params/BasicHttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    #@9
    .line 107
    add-int/lit8 v0, v0, 0x1

    #@b
    goto :goto_0

    #@c
    .line 106
    :cond_0
    return-void
.end method
