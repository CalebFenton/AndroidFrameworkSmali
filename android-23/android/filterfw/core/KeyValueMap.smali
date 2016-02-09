.class public Landroid/filterfw/core/KeyValueMap;
.super Ljava/util/HashMap;
.source "KeyValueMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    #@3
    return-void
.end method

.method public static varargs fromKeyValues([Ljava/lang/Object;)Landroid/filterfw/core/KeyValueMap;
    .locals 1
    .param p0, "keyValues"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 46
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    #@2
    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    #@5
    .line 47
    .local v0, "result":Landroid/filterfw/core/KeyValueMap;
    invoke-virtual {v0, p0}, Landroid/filterfw/core/KeyValueMap;->setKeyValues([Ljava/lang/Object;)V

    #@8
    .line 48
    return-object v0
.end method


# virtual methods
.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 62
    invoke-virtual {p0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 63
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@7
    check-cast v0, Ljava/lang/Float;

    #@9
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    #@f
    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 57
    invoke-virtual {p0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 58
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@7
    check-cast v0, Ljava/lang/Integer;

    #@9
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@c
    move-result v1

    #@d
    return v1

    #@e
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    #@f
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 52
    invoke-virtual {p0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 53
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@7
    check-cast v0, Ljava/lang/String;

    #@9
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    #@a
    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    #@b
    goto :goto_0
.end method

.method public varargs setKeyValues([Ljava/lang/Object;)V
    .locals 6
    .param p1, "keyValues"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 30
    array-length v3, p1

    #@1
    rem-int/lit8 v3, v3, 0x2

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 31
    new-instance v3, Ljava/lang/RuntimeException;

    #@7
    const-string/jumbo v4, "Key-Value arguments passed into setKeyValues must be an alternating list of keys and values!"

    #@a
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 34
    :cond_0
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v3, p1

    #@10
    if-ge v0, v3, :cond_2

    #@12
    .line 35
    aget-object v3, p1, v0

    #@14
    instance-of v3, v3, Ljava/lang/String;

    #@16
    if-nez v3, :cond_1

    #@18
    .line 36
    new-instance v3, Ljava/lang/RuntimeException;

    #@1a
    new-instance v4, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v5, "Key-value argument "

    #@22
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    const-string/jumbo v5, " must be a key of type "

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    .line 37
    const-string/jumbo v5, "String, but found an object of type "

    #@34
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 37
    aget-object v5, p1, v0

    #@3a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3d
    move-result-object v5

    #@3e
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 37
    const-string/jumbo v5, "!"

    #@45
    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v4

    #@4d
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v3

    #@51
    .line 39
    :cond_1
    aget-object v1, p1, v0

    #@53
    check-cast v1, Ljava/lang/String;

    #@55
    .line 40
    .local v1, "key":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    #@57
    aget-object v2, p1, v3

    #@59
    .line 41
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    .line 34
    add-int/lit8 v0, v0, 0x2

    #@5e
    goto :goto_0

    #@5f
    .line 29
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 68
    new-instance v4, Ljava/io/StringWriter;

    #@2
    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    #@5
    .line 69
    .local v4, "writer":Ljava/io/StringWriter;
    invoke-virtual {p0}, Landroid/filterfw/core/KeyValueMap;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v5

    #@9
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_1

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Map$Entry;

    #@19
    .line 71
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    .line 72
    .local v2, "value":Ljava/lang/Object;
    instance-of v5, v2, Ljava/lang/String;

    #@1f
    if-eqz v5, :cond_0

    #@21
    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v6, "\""

    #@29
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v5

    #@2d
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v5

    #@31
    const-string/jumbo v6, "\""

    #@34
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    .line 77
    .local v3, "valueString":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@44
    move-result-object v5

    #@45
    check-cast v5, Ljava/lang/String;

    #@47
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    const-string/jumbo v6, " = "

    #@4e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    const-string/jumbo v6, ";\n"

    #@59
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    #@64
    goto :goto_0

    #@65
    .line 75
    .end local v3    # "valueString":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@68
    move-result-object v3

    #@69
    .restart local v3    # "valueString":Ljava/lang/String;
    goto :goto_1

    #@6a
    .line 79
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "value":Ljava/lang/Object;
    .end local v3    # "valueString":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    #@6d
    move-result-object v5

    #@6e
    return-object v5
.end method
