.class public Lgov/nist/core/DuplicateNameValueList;
.super Ljava/lang/Object;
.source "DuplicateNameValueList.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final whitelist serialVersionUID:J = -0x4ddf7598584c3ad8L


# instance fields
.field private greylist nameValueMap:Lgov/nist/core/MultiValueMapImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgov/nist/core/MultiValueMapImpl<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field private greylist separator:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lgov/nist/core/MultiValueMapImpl;

    invoke-direct {v0}, Lgov/nist/core/MultiValueMapImpl;-><init>()V

    iput-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    .line 54
    const-string v0, ";"

    iput-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public greylist clear()V
    .registers 2

    .line 233
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->clear()V

    .line 235
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 189
    new-instance v0, Lgov/nist/core/DuplicateNameValueList;

    invoke-direct {v0}, Lgov/nist/core/DuplicateNameValueList;-><init>()V

    .line 190
    .local v0, "retval":Lgov/nist/core/DuplicateNameValueList;
    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lgov/nist/core/DuplicateNameValueList;->setSeparator(Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v1}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 192
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 193
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/NameValue;

    invoke-virtual {v2}, Lgov/nist/core/NameValue;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/core/NameValue;

    invoke-virtual {v0, v2}, Lgov/nist/core/DuplicateNameValueList;->set(Lgov/nist/core/NameValue;)V

    goto :goto_14

    .line 195
    :cond_2a
    return-object v0
.end method

.method public greylist delete(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "lcName":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v1, v0}, Lgov/nist/core/MultiValueMapImpl;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 180
    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v1, v0}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/Object;)Ljava/util/List;

    .line 181
    const/4 v1, 0x1

    return v1

    .line 183
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/DuplicateNameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 74
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 75
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 78
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lgov/nist/core/GenericObject;

    if-eqz v2, :cond_27

    .line 80
    move-object v2, v1

    check-cast v2, Lgov/nist/core/GenericObject;

    .line 81
    .local v2, "gobj":Lgov/nist/core/GenericObject;
    invoke-virtual {v2, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 82
    .end local v2    # "gobj":Lgov/nist/core/GenericObject;
    goto :goto_2e

    .line 83
    :cond_27
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 86
    iget-object v2, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    .end local v1    # "obj":Ljava/lang/Object;
    goto :goto_18

    .line 92
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/core/NameValue;>;"
    :cond_3a
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 123
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 124
    return v0

    .line 126
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 127
    return v0

    .line 129
    :cond_13
    move-object v1, p1

    check-cast v1, Lgov/nist/core/DuplicateNameValueList;

    .line 131
    .local v1, "other":Lgov/nist/core/DuplicateNameValueList;
    iget-object v2, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v2}, Lgov/nist/core/MultiValueMapImpl;->size()I

    move-result v2

    iget-object v3, v1, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v3}, Lgov/nist/core/MultiValueMapImpl;->size()I

    move-result v3

    if-eq v2, v3, :cond_25

    .line 132
    return v0

    .line 134
    :cond_25
    iget-object v2, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v2}, Lgov/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 136
    .local v2, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 138
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lgov/nist/core/DuplicateNameValueList;->getNameValue(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    .line 139
    .local v4, "nv1":Ljava/util/Collection;
    iget-object v5, v1, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v5, v3}, Lgov/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 140
    .local v5, "nv2":Ljava/util/Collection;
    if-nez v5, :cond_48

    .line 141
    return v0

    .line 142
    :cond_48
    invoke-interface {v5, v4}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    .line 143
    return v0

    .line 144
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "nv1":Ljava/util/Collection;
    .end local v5    # "nv2":Ljava/util/Collection;
    :cond_4f
    goto :goto_2f

    .line 145
    :cond_50
    const/4 v0, 0x1

    return v0
.end method

.method public greylist getNameValue(Ljava/lang/String;)Ljava/util/Collection;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/MultiValueMapImpl;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

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

    .line 213
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 223
    invoke-virtual {p0, p1}, Lgov/nist/core/DuplicateNameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, "val":Ljava/lang/Object;
    if-nez v0, :cond_8

    .line 225
    const/4 v1, 0x0

    return-object v1

    .line 226
    :cond_8
    instance-of v1, v0, Lgov/nist/core/GenericObject;

    if-eqz v1, :cond_14

    .line 227
    move-object v1, v0

    check-cast v1, Lgov/nist/core/GenericObject;

    invoke-virtual {v1}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 229
    :cond_14
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/DuplicateNameValueList;->getNameValue(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 153
    .local v0, "nv":Ljava/util/Collection;
    if-eqz v0, :cond_b

    .line 154
    return-object v0

    .line 156
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist hasNameValue(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov/nist/core/MultiValueMapImpl;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 258
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist isEmpty()Z
    .registers 2

    .line 238
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->isEmpty()Z

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

    .line 204
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist put(Ljava/lang/String;Lgov/nist/core/NameValue;)Lgov/nist/core/NameValue;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lgov/nist/core/NameValue;

    .line 242
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0, p1, p2}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    return-object v0
.end method

.method public greylist remove(Ljava/lang/Object;)Lgov/nist/core/NameValue;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0, p1}, Lgov/nist/core/MultiValueMapImpl;->remove(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    return-object v0
.end method

.method public greylist set(Lgov/nist/core/NameValue;)V
    .registers 4
    .param p1, "nv"    # Lgov/nist/core/NameValue;

    .line 104
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p1}, Lgov/nist/core/NameValue;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 105
    return-void
.end method

.method public greylist set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 111
    new-instance v0, Lgov/nist/core/NameValue;

    invoke-direct {v0, p1, p2}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    .local v0, "nameValue":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lgov/nist/core/MultiValueMapImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    .line 114
    return-void
.end method

.method public greylist setSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "separator"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lgov/nist/core/DuplicateNameValueList;->separator:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public greylist size()I
    .registers 2

    .line 250
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 96
    invoke-virtual {p0}, Lgov/nist/core/DuplicateNameValueList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lgov/nist/core/NameValue;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lgov/nist/core/DuplicateNameValueList;->nameValueMap:Lgov/nist/core/MultiValueMapImpl;

    invoke-virtual {v0}, Lgov/nist/core/MultiValueMapImpl;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
