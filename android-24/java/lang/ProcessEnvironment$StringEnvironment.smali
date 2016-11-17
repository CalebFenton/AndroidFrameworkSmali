.class Ljava/lang/ProcessEnvironment$StringEnvironment;
.super Ljava/util/AbstractMap;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 227
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    #@3
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@5
    return-void
.end method

.method private static toString(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/ProcessEnvironment$Value;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 225
    if-nez p0, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$Value;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 230
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    #@5
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 251
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEntrySet;

    #@2
    iget-object v1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringEntrySet;-><init>(Ljava/util/Set;)V

    #@b
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 237
    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEnvironment;->get(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 238
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    #@c
    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toString(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
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
    .line 248
    new-instance v0, Ljava/lang/ProcessEnvironment$StringKeySet;

    #@2
    iget-object v1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@4
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringKeySet;-><init>(Ljava/util/Set;)V

    #@b
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 240
    check-cast p1, Ljava/lang/String;

    #@2
    .end local p1    # "key":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    #@4
    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/lang/ProcessEnvironment$StringEnvironment;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 241
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Variable;

    #@5
    move-result-object v1

    #@6
    .line 242
    invoke-static {p2}, Ljava/lang/ProcessEnvironment$Value;->valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;

    #@9
    move-result-object v2

    #@a
    .line 241
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    #@10
    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toString(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 244
    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEnvironment;->remove(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 245
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    #@c
    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toString(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@2
    invoke-interface {v0}, Ljava/util/Map;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toEnvironmentBlock([I)[B
    .locals 10
    .param p1, "envc"    # [I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 270
    iget-object v8, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@3
    invoke-interface {v8}, Ljava/util/Map;->size()I

    #@6
    move-result v8

    #@7
    mul-int/lit8 v1, v8, 0x2

    #@9
    .line 271
    .local v1, "count":I
    iget-object v8, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@b
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v8

    #@f
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v3

    #@13
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v8

    #@17
    if-eqz v8, :cond_0

    #@19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/util/Map$Entry;

    #@1f
    .line 272
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@22
    move-result-object v8

    #@23
    check-cast v8, Ljava/lang/ProcessEnvironment$Variable;

    #@25
    invoke-virtual {v8}, Ljava/lang/ProcessEnvironment$Variable;->getBytes()[B

    #@28
    move-result-object v8

    #@29
    array-length v8, v8

    #@2a
    add-int/2addr v1, v8

    #@2b
    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2e
    move-result-object v8

    #@2f
    check-cast v8, Ljava/lang/ProcessEnvironment$Value;

    #@31
    invoke-virtual {v8}, Ljava/lang/ProcessEnvironment$Value;->getBytes()[B

    #@34
    move-result-object v8

    #@35
    array-length v8, v8

    #@36
    add-int/2addr v1, v8

    #@37
    goto :goto_0

    #@38
    .line 276
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    :cond_0
    new-array v0, v1, [B

    #@3a
    .line 278
    .local v0, "block":[B
    const/4 v4, 0x0

    #@3b
    .line 279
    .local v4, "i":I
    iget-object v8, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@3d
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@40
    move-result-object v8

    #@41
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@44
    move-result-object v3

    #@45
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v8

    #@49
    if-eqz v8, :cond_1

    #@4b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4e
    move-result-object v2

    #@4f
    check-cast v2, Ljava/util/Map$Entry;

    #@51
    .line 280
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@54
    move-result-object v8

    #@55
    check-cast v8, Ljava/lang/ProcessEnvironment$Variable;

    #@57
    invoke-virtual {v8}, Ljava/lang/ProcessEnvironment$Variable;->getBytes()[B

    #@5a
    move-result-object v6

    #@5b
    .line 281
    .local v6, "key":[B
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@5e
    move-result-object v8

    #@5f
    check-cast v8, Ljava/lang/ProcessEnvironment$Value;

    #@61
    invoke-virtual {v8}, Ljava/lang/ProcessEnvironment$Value;->getBytes()[B

    #@64
    move-result-object v7

    #@65
    .line 282
    .local v7, "value":[B
    array-length v8, v6

    #@66
    invoke-static {v6, v9, v0, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@69
    .line 283
    array-length v8, v6

    #@6a
    add-int/2addr v4, v8

    #@6b
    .line 284
    add-int/lit8 v5, v4, 0x1

    #@6d
    .end local v4    # "i":I
    .local v5, "i":I
    const/16 v8, 0x3d

    #@6f
    aput-byte v8, v0, v4

    #@71
    .line 285
    array-length v8, v7

    #@72
    invoke-static {v7, v9, v0, v5, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@75
    .line 286
    array-length v8, v7

    #@76
    add-int/lit8 v8, v8, 0x1

    #@78
    add-int v4, v5, v8

    #@7a
    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_1

    #@7b
    .line 290
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    .end local v6    # "key":[B
    .end local v7    # "value":[B
    :cond_1
    iget-object v8, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@7d
    invoke-interface {v8}, Ljava/util/Map;->size()I

    #@80
    move-result v8

    #@81
    aput v8, p1, v9

    #@83
    .line 291
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 254
    new-instance v0, Ljava/lang/ProcessEnvironment$StringValues;

    #@2
    iget-object v1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    #@4
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringValues;-><init>(Ljava/util/Collection;)V

    #@b
    return-object v0
.end method
