.class public Landroid/filterfw/core/KeyValueMap;
.super Ljava/util/HashMap;
.source "KeyValueMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static varargs blacklist fromKeyValues([Ljava/lang/Object;)Landroid/filterfw/core/KeyValueMap;
    .registers 2
    .param p0, "keyValues"    # [Ljava/lang/Object;

    .line 46
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 47
    .local v0, "result":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {v0, p0}, Landroid/filterfw/core/KeyValueMap;->setKeyValues([Ljava/lang/Object;)V

    .line 48
    return-object v0
.end method


# virtual methods
.method public greylist-max-o getFloat(Ljava/lang/String;)F
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 62
    invoke-virtual {p0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public greylist-max-o getInt(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public greylist-max-o getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 52
    invoke-virtual {p0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return-object v1
.end method

.method public varargs blacklist setKeyValues([Ljava/lang/Object;)V
    .registers 6
    .param p1, "keyValues"    # [Ljava/lang/Object;

    .line 30
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4d

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_4c

    .line 35
    aget-object v1, p1, v0

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 39
    aget-object v1, p1, v0

    check-cast v1, Ljava/lang/String;

    .line 40
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    .line 41
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 36
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key-value argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must be a key of type String, but found an object of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    .line 37
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v0    # "i":I
    :cond_4c
    return-void

    .line 31
    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Key-Value arguments passed into setKeyValues must be an alternating list of keys and values!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 68
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 69
    .local v0, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0}, Landroid/filterfw/core/KeyValueMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 71
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 72
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_39

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "valueString":Ljava/lang/String;
    goto :goto_3d

    .line 75
    .end local v4    # "valueString":Ljava/lang/String;
    :cond_39
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 77
    .restart local v4    # "valueString":Ljava/lang/String;
    :goto_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 78
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "valueString":Ljava/lang/String;
    goto :goto_d

    .line 79
    :cond_64
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
