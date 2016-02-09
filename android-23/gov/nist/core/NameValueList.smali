.class public Lgov/nist/core/NameValueList;
.super Ljava/lang/Object;
.source "NameValueList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lgov/nist/core/NameValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x611edb317cd0ac13L


# instance fields
.field private hmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private separator:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    const-string/jumbo v0, ";"

    #@6
    iput-object v0, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    #@8
    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    #@a
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@d
    iput-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@f
    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "sync"    # Z

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    const-string/jumbo v0, ";"

    #@6
    iput-object v0, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    #@8
    .line 73
    if-eqz p1, :cond_0

    #@a
    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@f
    iput-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@11
    .line 71
    :goto_0
    return-void

    #@12
    .line 76
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    #@14
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@17
    iput-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@19
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@5
    .line 278
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 216
    new-instance v1, Lgov/nist/core/NameValueList;

    #@2
    invoke-direct {v1}, Lgov/nist/core/NameValueList;-><init>()V

    #@5
    .line 217
    .local v1, "retval":Lgov/nist/core/NameValueList;
    iget-object v2, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    #@7
    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    #@a
    .line 218
    iget-object v2, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@c
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v0

    #@14
    .line 219
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v2

    #@1e
    check-cast v2, Lgov/nist/core/NameValue;

    #@20
    invoke-virtual {v2}, Lgov/nist/core/NameValue;->clone()Ljava/lang/Object;

    #@23
    move-result-object v2

    #@24
    check-cast v2, Lgov/nist/core/NameValue;

    #@26
    invoke-virtual {v1, v2}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    #@29
    goto :goto_0

    #@2a
    .line 222
    :cond_0
    return-object v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 295
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 206
    .local v0, "lcName":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@6
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 207
    iget-object v1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@e
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 208
    const/4 v1, 0x1

    #@12
    return v1

    #@13
    .line 210
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 94
    iget-object v3, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_1

    #@8
    .line 95
    iget-object v3, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@a
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .line 96
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 98
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    .line 99
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lgov/nist/core/GenericObject;

    #@1e
    if-eqz v3, :cond_0

    #@20
    move-object v0, v2

    #@21
    .line 100
    check-cast v0, Lgov/nist/core/GenericObject;

    #@23
    .line 101
    .local v0, "gobj":Lgov/nist/core/GenericObject;
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@26
    .line 105
    .end local v0    # "gobj":Lgov/nist/core/GenericObject;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 106
    iget-object v3, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    #@2e
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    goto :goto_0

    #@32
    .line 103
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    goto :goto_1

    #@3a
    .line 112
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lgov/nist/core/NameValue;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 144
    if-nez p1, :cond_0

    #@3
    .line 145
    return v7

    #@4
    .line 147
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v5

    #@8
    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v6

    #@c
    invoke-virtual {v5, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v5

    #@10
    if-nez v5, :cond_1

    #@12
    .line 148
    return v7

    #@13
    :cond_1
    move-object v4, p1

    #@14
    .line 150
    check-cast v4, Lgov/nist/core/NameValueList;

    #@16
    .line 152
    .local v4, "other":Lgov/nist/core/NameValueList;
    iget-object v5, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@18
    invoke-interface {v5}, Ljava/util/Map;->size()I

    #@1b
    move-result v5

    #@1c
    iget-object v6, v4, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@1e
    invoke-interface {v6}, Ljava/util/Map;->size()I

    #@21
    move-result v6

    #@22
    if-eq v5, v6, :cond_2

    #@24
    .line 153
    return v7

    #@25
    .line 155
    :cond_2
    iget-object v5, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@27
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@2a
    move-result-object v5

    #@2b
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    .line 157
    .local v1, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_5

    #@35
    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Ljava/lang/String;

    #@3b
    .line 159
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@3e
    move-result-object v2

    #@3f
    .line 160
    .local v2, "nv1":Lgov/nist/core/NameValue;
    iget-object v5, v4, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@41
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v3

    #@45
    check-cast v3, Lgov/nist/core/NameValue;

    #@47
    .line 161
    .local v3, "nv2":Lgov/nist/core/NameValue;
    if-nez v3, :cond_4

    #@49
    .line 162
    return v7

    #@4a
    .line 163
    :cond_4
    invoke-virtual {v3, v2}, Lgov/nist/core/NameValue;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v5

    #@4e
    if-nez v5, :cond_3

    #@50
    .line 164
    return v7

    #@51
    .line 166
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "nv1":Lgov/nist/core/NameValue;
    .end local v3    # "nv2":Lgov/nist/core/NameValue;
    :cond_5
    const/4 v5, 0x1

    #@52
    return v5
.end method

.method public get(Ljava/lang/Object;)Lgov/nist/core/NameValue;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lgov/nist/core/NameValue;

    #@10
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->get(Ljava/lang/Object;)Lgov/nist/core/NameValue;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 186
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lgov/nist/core/NameValue;

    #@c
    return-object v0
.end method

.method public getNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 264
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 265
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@7
    .line 266
    return-object v1

    #@8
    .line 267
    :cond_0
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 268
    check-cast v0, Lgov/nist/core/GenericObject;

    #@e
    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 270
    .restart local v0    # "val":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p0, v1}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    #@8
    move-result-object v0

    #@9
    .line 174
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_0

    #@b
    .line 175
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 177
    :cond_0
    return-object v2
.end method

.method public hasNameValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 352
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 236
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 319
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put(Ljava/lang/String;Lgov/nist/core/NameValue;)Lgov/nist/core/NameValue;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameValue"    # Lgov/nist/core/NameValue;

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/core/NameValue;

    #@8
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/Object;
    .param p2, "nameValue"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 326
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "name":Ljava/lang/Object;
    check-cast p2, Lgov/nist/core/NameValue;

    #@4
    .end local p2    # "nameValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgov/nist/core/NameValueList;->put(Ljava/lang/String;Lgov/nist/core/NameValue;)Lgov/nist/core/NameValue;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/String;",
            "+",
            "Lgov/nist/core/NameValue;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 331
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Lgov/nist/core/NameValue;>;"
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@5
    .line 330
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lgov/nist/core/NameValue;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lgov/nist/core/NameValue;

    #@10
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 338
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->remove(Ljava/lang/Object;)Lgov/nist/core/NameValue;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public set(Lgov/nist/core/NameValue;)V
    .locals 2
    .param p1, "nv"    # Lgov/nist/core/NameValue;

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-virtual {p1}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 123
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 131
    new-instance v0, Lgov/nist/core/NameValue;

    #@2
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 132
    .local v0, "nameValue":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@7
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 130
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 80
    iput-object p1, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    #@2
    .line 79
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 116
    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 347
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
