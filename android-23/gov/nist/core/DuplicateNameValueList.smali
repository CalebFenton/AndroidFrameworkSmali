.class public Lgov/nist/core/DuplicateNameValueList;
.super Ljava/lang/Object;
.source "DuplicateNameValueList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x4ddf7598584c3ad8L


# instance fields
.field private nameValueMap:Lgov/nist/core/MultiValueMapImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgov/nist/core/MultiValueMapImpl",
            "<",
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    new-instance v0, Lgov/nist/core/MultiValueMapImpl;

    #@5
    invoke-direct {v0}, Lgov/nist/core/MultiValueMapImpl;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@a
    .line 54
    const-string/jumbo v0, ";"

    #@d
    iput-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    #@f
    .line 51
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 233
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->clear()V

    #@5
    .line 232
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 189
    new-instance v1, Lgov/nist/core/DuplicateNameValueList;

    #@2
    invoke-direct {v1}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    #@5
    .line 190
    .local v1, "retval":Lgov/nist/core/DuplicateNameValueList;
    iget-object v2, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    #@7
    invoke-virtual {v1, v2}, Lgov/nist/core/DuplicateNameValueList;->setSeparator(Ljava/lang/String;)V

    #@a
    .line 191
    iget-object v2, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@c
    invoke-virtual {v2}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    #@f
    move-result-object v2

    #@10
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v0

    #@14
    .line 192
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 193
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
    invoke-virtual {v1, v2}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    #@29
    goto :goto_0

    #@2a
    .line 195
    :cond_0
    return-object v1
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 179
    .local v0, "lcName":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@6
    invoke-virtual {v1, v0}, Lgov/nist/core/MultiValueMapImpl;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 180
    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@e
    invoke-virtual {v1, v0}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/Object;)Ljava/util/List;

    #@11
    .line 181
    const/4 v1, 0x1

    #@12
    return v1

    #@13
    .line 183
    :cond_0
    const/4 v1, 0x0

    #@14
    return v1
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    invoke-virtual {p0, v0}, Lgov/nist/core/DuplicateNameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

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
    .line 74
    iget-object v3, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {v3}, Lgov/nist/core/MultiValueMapImpl;->isEmpty()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_1

    #@8
    .line 75
    iget-object v3, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@a
    invoke-virtual {v3}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    #@d
    move-result-object v3

    #@e
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .line 76
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 78
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    .line 79
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lgov/nist/core/GenericObject;

    #@1e
    if-eqz v3, :cond_0

    #@20
    move-object v0, v2

    #@21
    .line 80
    check-cast v0, Lgov/nist/core/GenericObject;

    #@23
    .line 81
    .local v0, "gobj":Lgov/nist/core/GenericObject;
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    #@26
    .line 85
    .end local v0    # "gobj":Lgov/nist/core/GenericObject;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v3

    #@2a
    if-eqz v3, :cond_1

    #@2c
    .line 86
    iget-object v3, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    #@2e
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@31
    goto :goto_0

    #@32
    .line 83
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@39
    goto :goto_1

    #@3a
    .line 92
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_1
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "otherObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 123
    if-nez p1, :cond_0

    #@3
    .line 124
    return v7

    #@4
    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v5

    #@8
    invoke-virtual {p0}, Lgov/nist/core/DuplicateNameValueList;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v6

    #@c
    invoke-virtual {v5, v6}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v5

    #@10
    if-nez v5, :cond_1

    #@12
    .line 127
    return v7

    #@13
    :cond_1
    move-object v4, p1

    #@14
    .line 129
    check-cast v4, Lgov/nist/core/DuplicateNameValueList;

    #@16
    .line 131
    .local v4, "other":Lgov/nist/core/DuplicateNameValueList;
    iget-object v5, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@18
    invoke-virtual {v5}, Lgov/nist/core/MultiValueMapImpl;->size()I

    #@1b
    move-result v5

    #@1c
    iget-object v6, v4, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@1e
    invoke-virtual {v6}, Lgov/nist/core/MultiValueMapImpl;->size()I

    #@21
    move-result v6

    #@22
    if-eq v5, v6, :cond_2

    #@24
    .line 132
    return v7

    #@25
    .line 134
    :cond_2
    iget-object v5, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@27
    invoke-virtual {v5}, Lgov/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

    #@2a
    move-result-object v5

    #@2b
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    .line 136
    .local v1, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_5

    #@35
    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Ljava/lang/String;

    #@3b
    .line 138
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lgov/nist/core/DuplicateNameValueList;->getNameValue(Ljava/lang/String;)Ljava/util/Collection;

    #@3e
    move-result-object v2

    #@3f
    .line 139
    .local v2, "nv1":Ljava/util/Collection;
    iget-object v5, v4, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@41
    invoke-virtual {v5, v0}, Lgov/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    #@44
    move-result-object v3

    #@45
    .line 140
    .local v3, "nv2":Ljava/util/Collection;
    if-nez v3, :cond_4

    #@47
    .line 141
    return v7

    #@48
    .line 142
    :cond_4
    invoke-interface {v3, v2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v5

    #@4c
    if-nez v5, :cond_3

    #@4e
    .line 143
    return v7

    #@4f
    .line 145
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "nv1":Ljava/util/Collection;
    .end local v3    # "nv2":Ljava/util/Collection;
    :cond_5
    const/4 v5, 0x1

    #@50
    return v5
.end method

.method public getNameValue(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 164
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lgov/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
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
    .line 213
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

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
    .line 223
    invoke-virtual {p0, p1}, Lgov/nist/core/DuplicateNameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 224
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@7
    .line 225
    return-object v1

    #@8
    .line 226
    :cond_0
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    #@a
    if-eqz v1, :cond_1

    #@c
    .line 227
    check-cast v0, Lgov/nist/core/GenericObject;

    #@e
    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 229
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
    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p0, v1}, Lgov/nist/core/DuplicateNameValueList;->getNameValue(Ljava/lang/String;)Ljava/util/Collection;

    #@8
    move-result-object v0

    #@9
    .line 153
    .local v0, "nv":Ljava/util/Collection;
    if-eqz v0, :cond_0

    #@b
    .line 154
    return-object v0

    #@c
    .line 156
    :cond_0
    return-object v2
.end method

.method public hasNameValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v0, v1}, Lgov/nist/core/MultiValueMapImpl;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 258
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

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
    .line 238
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->isEmpty()Z

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
    .line 204
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public put(Ljava/lang/String;Lgov/nist/core/NameValue;)Lgov/nist/core/NameValue;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lgov/nist/core/NameValue;

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/core/NameValue;

    #@8
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lgov/nist/core/NameValue;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 246
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {v0, p1}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/Object;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lgov/nist/core/NameValue;

    #@8
    return-object v0
.end method

.method public set(Lgov/nist/core/NameValue;)V
    .locals 2
    .param p1, "nv"    # Lgov/nist/core/NameValue;

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {p1}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v0, v1, p1}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    #@d
    .line 103
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 111
    new-instance v0, Lgov/nist/core/NameValue;

    #@2
    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    #@5
    .line 112
    .local v0, "nameValue":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@7
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {v1, v2, v0}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    #@e
    .line 110
    return-void
.end method

.method public setSeparator(Ljava/lang/String;)V
    .locals 0
    .param p1, "separator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 60
    iput-object p1, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    #@2
    .line 59
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 250
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    invoke-virtual {p0}, Lgov/nist/core/DuplicateNameValueList;->encode()Ljava/lang/String;

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
    .line 254
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    #@2
    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
