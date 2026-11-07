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
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lgov/nist/core/NameValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x611edb317cd0ac13L


# instance fields
.field private greylist hmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private greylist separator:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string v0, ";"

    iput-object v0, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    .line 69
    return-void
.end method

.method public constructor greylist <init>(Z)V
    .registers 3
    .param p1, "sync"    # Z

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, ";"

    iput-object v0, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    .line 73
    if-eqz p1, :cond_11

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    goto :goto_18

    .line 76
    :cond_11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    .line 77
    :goto_18
    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 279
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 280
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 216
    new-instance v0, Lgov/nist/core/NameValueList;

    invoke-direct {v0}, Lgov/nist/core/NameValueList;-><init>()V

    .line 217
    .local v0, "retval":Lgov/nist/core/NameValueList;
    iget-object v1, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 219
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 220
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/NameValue;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/NameValue;

    invoke-virtual {v0, v2}, Lgov/nist/core/NameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_14

    .line 222
    :cond_2a
    return-object v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist delete(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "lcName":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 207
    iget-object v1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/4 v1, 0x1

    return v1

    .line 210
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 90
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 94
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 95
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 96
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 98
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lgov/nist/core/GenericObject;

    if-eqz v2, :cond_27

    .line 100
    move-object v2, v1

    check-cast v2, Lgov/nist/core/GenericObject;

    .line 101
    .local v2, "gobj":Lgov/nist/core/GenericObject;
    invoke-virtual {v2, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 102
    .end local v2    # "gobj":Lgov/nist/core/GenericObject;
    goto :goto_2e

    .line 103
    :cond_27
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 106
    iget-object v2, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    .end local v1    # "obj":Ljava/lang/Object;
    goto :goto_18

    .line 112
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    :cond_3a
    return-object p1
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lgov/nist/core/NameValue;",
            ">;>;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 144
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 145
    return v0

    .line 147
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 148
    return v0

    .line 150
    :cond_13
    move-object v1, p1

    check-cast v1, Lgov/nist/core/NameValueList;

    .line 152
    .local v1, "other":Lgov/nist/core/NameValueList;
    iget-object v2, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget-object v3, v1, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_25

    .line 153
    return v0

    .line 155
    :cond_25
    iget-object v2, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 157
    .local v2, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 158
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v4

    .line 160
    .local v4, "nv1":Lgov/nist/core/NameValue;
    iget-object v5, v1, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgov/nist/core/NameValue;

    .line 161
    .local v5, "nv2":Lgov/nist/core/NameValue;
    if-nez v5, :cond_4a

    .line 162
    return v0

    .line 163
    :cond_4a
    invoke-virtual {v5, v4}, Lgov/nist/core/NameValue;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51

    .line 164
    return v0

    .line 165
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "nv1":Lgov/nist/core/NameValue;
    .end local v5    # "nv2":Lgov/nist/core/NameValue;
    :cond_51
    goto :goto_2f

    .line 166
    :cond_52
    const/4 v0, 0x1

    return v0
.end method

.method public greylist get(Ljava/lang/Object;)Lgov/nist/core/NameValue;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->get(Ljava/lang/Object;)Lgov/nist/core/NameValue;

    move-result-object p1

    return-object p1
.end method

.method public greylist getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    return-object v0
.end method

.method public greylist getNames()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 264
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 266
    const/4 v1, 0x0

    return-object v1

    .line 267
    :cond_8
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    if-eqz v1, :cond_14

    .line 268
    move-object v1, v0

    check-cast v1, Lgov/nist/core/GenericObject;

    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 270
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov/nist/core/NameValue;

    move-result-object v0

    .line 174
    .local v0, "nv":Lgov/nist/core/NameValue;
    if-eqz v0, :cond_f

    .line 175
    invoke-virtual {v0}, Lgov/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 177
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist hasNameValue(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 352
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 236
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public greylist iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist put(Ljava/lang/String;Lgov/nist/core/NameValue;)Lgov/nist/core/NameValue;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameValue"    # Lgov/nist/core/NameValue;

    .line 327
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 54
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lgov/nist/core/NameValue;

    invoke-virtual {p0, p1, p2}, Lgov/nist/core/NameValueList;->put(Ljava/lang/String;Lgov/nist/core/NameValue;)Lgov/nist/core/NameValue;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Lgov/nist/core/NameValue;",
            ">;)V"
        }
    .end annotation

    .line 331
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Lgov/nist/core/NameValue;>;"
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 332
    return-void
.end method

.method public greylist remove(Ljava/lang/Object;)Lgov/nist/core/NameValue;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lgov/nist/core/NameValueList;->remove(Ljava/lang/Object;)Lgov/nist/core/NameValue;

    move-result-object p1

    return-object p1
.end method

.method public greylist set(Lgov/nist/core/NameValue;)V
    .registers 4
    .param p1, "nv"    # Lgov/nist/core/NameValue;

    .line 124
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public greylist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 131
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    .local v0, "nameValue":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

.method public greylist setSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "separator"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lgov/nist/core/NameValueList;->separator:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 229
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 116
    invoke-virtual {p0}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lgov/nist/core/NameValueList;->hmap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
