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
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            "Ljava/lang/ProcessEnvironment$Value;",
            ">;)V"
        }
    .end annotation

    .line 253
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    return-void
.end method

.method private static blacklist toString(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/ProcessEnvironment$Value;

    .line 251
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$Value;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 256
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/lang/ProcessEnvironment$StringEntrySet;

    iget-object v1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringEntrySet;-><init>(Ljava/util/Set;)V

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

    .line 246
    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEnvironment;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toString(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 255
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/lang/ProcessEnvironment$StringKeySet;

    iget-object v1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringKeySet;-><init>(Ljava/util/Set;)V

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

    .line 246
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/ProcessEnvironment$StringEnvironment;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v1

    .line 268
    invoke-static {p2}, Ljava/lang/ProcessEnvironment$Value;->valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v2

    .line 267
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toString(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/String;

    move-result-object v0

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

    .line 246
    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$StringEnvironment;->remove(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist remove(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 271
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ProcessEnvironment$Value;

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$StringEnvironment;->toString(Ljava/lang/ProcessEnvironment$Value;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 254
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public blacklist toEnvironmentBlock([I)[B
    .registers 12
    .param p1, "envc"    # [I

    .line 296
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 297
    .local v0, "count":I
    iget-object v1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 298
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ProcessEnvironment$Variable;

    invoke-virtual {v3}, Ljava/lang/ProcessEnvironment$Variable;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v0, v3

    .line 299
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {v3}, Ljava/lang/ProcessEnvironment$Value;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v0, v3

    .line 300
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    goto :goto_12

    .line 302
    :cond_37
    new-array v1, v0, [B

    .line 304
    .local v1, "block":[B
    const/4 v2, 0x0

    .line 305
    .local v2, "i":I
    iget-object v3, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_44
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 306
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ProcessEnvironment$Variable;

    invoke-virtual {v6}, Ljava/lang/ProcessEnvironment$Variable;->getBytes()[B

    move-result-object v6

    .line 307
    .local v6, "key":[B
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {v7}, Ljava/lang/ProcessEnvironment$Value;->getBytes()[B

    move-result-object v7

    .line 308
    .local v7, "value":[B
    array-length v8, v6

    invoke-static {v6, v5, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 309
    array-length v8, v6

    add-int/2addr v2, v8

    .line 310
    add-int/lit8 v8, v2, 0x1

    .end local v2    # "i":I
    .local v8, "i":I
    const/16 v9, 0x3d

    aput-byte v9, v1, v2

    .line 311
    array-length v2, v7

    invoke-static {v7, v5, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    array-length v2, v7

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v8

    .line 315
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ProcessEnvironment$Variable;Ljava/lang/ProcessEnvironment$Value;>;"
    .end local v6    # "key":[B
    .end local v7    # "value":[B
    .end local v8    # "i":I
    .restart local v2    # "i":I
    goto :goto_44

    .line 316
    :cond_7a
    iget-object v3, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    aput v3, p1, v5

    .line 317
    return-object v1
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/lang/ProcessEnvironment$StringValues;

    iget-object v1, p0, Ljava/lang/ProcessEnvironment$StringEnvironment;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ProcessEnvironment$StringValues;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
