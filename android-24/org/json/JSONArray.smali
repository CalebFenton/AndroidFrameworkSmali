.class public Lorg/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@a
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5
    .param p1, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_0

    #@d
    .line 116
    new-instance v2, Lorg/json/JSONException;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Not a primitive array: "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v2

    #@2b
    .line 118
    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@2e
    move-result v1

    #@2f
    .line 119
    .local v1, "length":I
    new-instance v2, Ljava/util/ArrayList;

    #@31
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@34
    iput-object v2, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@36
    .line 120
    const/4 v0, 0x0

    #@37
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@39
    .line 121
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@3c
    move-result-object v2

    #@3d
    invoke-static {v2}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@44
    .line 120
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_0

    #@47
    .line 114
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    new-instance v0, Lorg/json/JSONTokener;

    #@2
    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    #@8
    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .param p1, "copyFrom"    # Ljava/util/Collection;

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    #@3
    .line 71
    if-eqz p1, :cond_0

    #@5
    .line 72
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@1a
    goto :goto_0

    #@1b
    .line 69
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONTokener;)V
    .locals 2
    .param p1, "readFrom"    # Lorg/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 92
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 93
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 94
    check-cast v0, Lorg/json/JSONArray;

    #@d
    .end local v0    # "object":Ljava/lang/Object;
    iget-object v1, v0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@f
    iput-object v1, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@11
    .line 87
    return-void

    #@12
    .line 96
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v1, "JSONArray"

    #@15
    invoke-static {v0, v1}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@18
    move-result-object v1

    #@19
    throw v1
.end method


# virtual methods
.method checkedPut(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 193
    instance-of v0, p1, Ljava/lang/Number;

    #@2
    if-eqz v0, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 194
    check-cast v0, Ljava/lang/Number;

    #@7
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@a
    move-result-wide v0

    #@b
    invoke-static {v0, v1}, Lorg/json/JSON;->checkDouble(D)D

    #@e
    .line 197
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@11
    .line 192
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 619
    instance-of v0, p1, Lorg/json/JSONArray;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Lorg/json/JSONArray;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@8
    iget-object v1, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 287
    :try_start_0
    iget-object v2, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@2
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v1

    #@6
    .line 288
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@8
    .line 289
    new-instance v2, Lorg/json/JSONException;

    #@a
    new-instance v3, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v4, "Value at "

    #@12
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    const-string/jumbo v4, " is null."

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@28
    throw v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 292
    .end local v1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@2a
    .line 293
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Lorg/json/JSONException;

    #@2c
    new-instance v3, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v4, "Index "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    const-string/jumbo v4, " out of range [0.."

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    iget-object v4, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@45
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@48
    move-result v4

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    const-string/jumbo v4, ")"

    #@50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v3

    #@58
    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v2

    #@5c
    .line 291
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_0
    return-object v1
.end method

.method public getBoolean(I)Z
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 328
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    #@7
    move-result-object v1

    #@8
    .line 329
    .local v1, "result":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    #@a
    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "boolean"

    #@11
    invoke-static {v2, v0, v3}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@14
    move-result-object v2

    #@15
    throw v2

    #@16
    .line 332
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@19
    move-result v2

    #@1a
    return v2
.end method

.method public getDouble(I)D
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 362
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    #@7
    move-result-object v1

    #@8
    .line 363
    .local v1, "result":Ljava/lang/Double;
    if-nez v1, :cond_0

    #@a
    .line 364
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "double"

    #@11
    invoke-static {v2, v0, v3}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@14
    move-result-object v2

    #@15
    throw v2

    #@16
    .line 366
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@19
    move-result-wide v2

    #@1a
    return-wide v2
.end method

.method public getInt(I)I
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 396
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    .line 397
    .local v1, "result":Ljava/lang/Integer;
    if-nez v1, :cond_0

    #@a
    .line 398
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "int"

    #@11
    invoke-static {v2, v0, v3}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@14
    move-result-object v2

    #@15
    throw v2

    #@16
    .line 400
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v2

    #@1a
    return v2
.end method

.method public getJSONArray(I)Lorg/json/JSONArray;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 496
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 497
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 498
    check-cast v0, Lorg/json/JSONArray;

    #@a
    .end local v0    # "object":Ljava/lang/Object;
    return-object v0

    #@b
    .line 500
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "JSONArray"

    #@12
    invoke-static {v1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public getJSONObject(I)Lorg/json/JSONObject;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 522
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 523
    check-cast v0, Lorg/json/JSONObject;

    #@a
    .end local v0    # "object":Ljava/lang/Object;
    return-object v0

    #@b
    .line 525
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    const-string/jumbo v2, "JSONObject"

    #@12
    invoke-static {v1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@15
    move-result-object v1

    #@16
    throw v1
.end method

.method public getLong(I)J
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 430
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    #@7
    move-result-object v1

    #@8
    .line 431
    .local v1, "result":Ljava/lang/Long;
    if-nez v1, :cond_0

    #@a
    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "long"

    #@11
    invoke-static {v2, v0, v3}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@14
    move-result-object v2

    #@15
    throw v2

    #@16
    .line 434
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@19
    move-result-wide v2

    #@1a
    return-wide v2
.end method

.method public getString(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 462
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 463
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 464
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    #@a
    .line 465
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, "String"

    #@11
    invoke-static {v2, v0, v3}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@14
    move-result-object v2

    #@15
    throw v2

    #@16
    .line 467
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 624
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isNull(I)Z
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 274
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .line 275
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@7
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    #@9
    if-ne v0, v2, :cond_1

    #@b
    :cond_0
    :goto_0
    return v1

    #@c
    :cond_1
    const/4 v1, 0x0

    #@d
    goto :goto_0
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 566
    new-instance v2, Lorg/json/JSONStringer;

    #@2
    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    #@5
    .line 567
    .local v2, "stringer":Lorg/json/JSONStringer;
    sget-object v3, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    #@7
    const-string/jumbo v4, ""

    #@a
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONStringer;->open(Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    #@d
    .line 568
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    iget-object v3, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@10
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@13
    move-result v1

    #@14
    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@16
    .line 569
    if-lez v0, :cond_0

    #@18
    .line 570
    iget-object v3, v2, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@1a
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 572
    :cond_0
    iget-object v3, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@1f
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    #@26
    .line 568
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 574
    :cond_1
    sget-object v3, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    #@2b
    sget-object v4, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    #@2d
    const-string/jumbo v5, ""

    #@30
    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONStringer;->close(Lorg/json/JSONStringer$Scope;Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    #@33
    .line 575
    iget-object v3, v2, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    #@35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v3

    #@39
    return-object v3
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public opt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 302
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@4
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 303
    :cond_0
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 305
    :cond_1
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@e
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public optBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 340
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public optBoolean(IZ)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "fallback"    # Z

    #@0
    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 349
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    #@7
    move-result-object v1

    #@8
    .line 350
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@d
    move-result p2

    #@e
    .end local p2    # "fallback":Z
    :cond_0
    return p2
.end method

.method public optDouble(I)D
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 374
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public optDouble(ID)D
    .locals 2
    .param p1, "index"    # I
    .param p2, "fallback"    # D

    #@0
    .prologue
    .line 382
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 383
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    #@7
    move-result-object v1

    #@8
    .line 384
    .local v1, "result":Ljava/lang/Double;
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@d
    move-result-wide p2

    #@e
    .end local p2    # "fallback":D
    :cond_0
    return-wide p2
.end method

.method public optInt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 408
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optInt(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public optInt(II)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "fallback"    # I

    #@0
    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 417
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    .line 418
    .local v1, "result":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result p2

    #@e
    .end local p2    # "fallback":I
    :cond_0
    return p2
.end method

.method public optJSONArray(I)Lorg/json/JSONArray;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 510
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    #@6
    if-eqz v1, :cond_0

    #@8
    check-cast v0, Lorg/json/JSONArray;

    #@a
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public optJSONObject(I)Lorg/json/JSONObject;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 535
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    #@6
    if-eqz v1, :cond_0

    #@8
    check-cast v0, Lorg/json/JSONObject;

    #@a
    .end local v0    # "object":Ljava/lang/Object;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public optLong(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 442
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONArray;->optLong(IJ)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public optLong(IJ)J
    .locals 2
    .param p1, "index"    # I
    .param p2, "fallback"    # J

    #@0
    .prologue
    .line 450
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 451
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    #@7
    move-result-object v1

    #@8
    .line 452
    .local v1, "result":Ljava/lang/Long;
    if-eqz v1, :cond_0

    #@a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@d
    move-result-wide p2

    #@e
    .end local p2    # "fallback":J
    :cond_0
    return-wide p2
.end method

.method public optString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 475
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public optString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I
    .param p2, "fallback"    # Ljava/lang/String;

    #@0
    .prologue
    .line 483
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 484
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 485
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@a
    .end local v1    # "result":Ljava/lang/String;
    :goto_0
    return-object v1

    #@b
    .restart local v1    # "result":Ljava/lang/String;
    :cond_0
    move-object v1, p2

    #@c
    goto :goto_0
.end method

.method public put(D)Lorg/json/JSONArray;
    .locals 5
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@2
    invoke-static {p1, p2}, Lorg/json/JSON;->checkDouble(D)D

    #@5
    move-result-wide v2

    #@6
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 151
    return-object p0
.end method

.method public put(I)Lorg/json/JSONArray;
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9
    .line 161
    return-object p0
.end method

.method public put(ID)Lorg/json/JSONArray;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public put(II)Lorg/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public put(IJ)Lorg/json/JSONArray;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public put(ILjava/lang/Object;)Lorg/json/JSONArray;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 258
    instance-of v0, p2, Ljava/lang/Number;

    #@2
    if-eqz v0, :cond_0

    #@4
    move-object v0, p2

    #@5
    .line 260
    check-cast v0, Ljava/lang/Number;

    #@7
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@a
    move-result-wide v0

    #@b
    invoke-static {v0, v1}, Lorg/json/JSON;->checkDouble(D)D

    #@e
    .line 262
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@10
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@13
    move-result v0

    #@14
    if-gt v0, p1, :cond_1

    #@16
    .line 263
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@18
    const/4 v1, 0x0

    #@19
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1c
    goto :goto_0

    #@1d
    .line 265
    :cond_1
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@1f
    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@22
    .line 266
    return-object p0
.end method

.method public put(IZ)Lorg/json/JSONArray;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public put(J)Lorg/json/JSONArray;
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9
    .line 171
    return-object p0
.end method

.method public put(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 185
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5
    .line 186
    return-object p0
.end method

.method public put(Z)Lorg/json/JSONArray;
    .locals 2
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5
    move-result-object v1

    #@6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@9
    .line 139
    return-object p0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 313
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@4
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@7
    move-result v0

    #@8
    if-lt p1, v0, :cond_1

    #@a
    .line 314
    :cond_0
    const/4 v0, 0x0

    #@b
    return-object v0

    #@c
    .line 316
    :cond_1
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@e
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public toJSONObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "names"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 546
    new-instance v3, Lorg/json/JSONObject;

    #@2
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    #@5
    .line 547
    .local v3, "result":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    #@8
    move-result v4

    #@9
    iget-object v5, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@b
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@e
    move-result v5

    #@f
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v1

    #@13
    .line 548
    .local v1, "length":I
    if-nez v1, :cond_0

    #@15
    .line 549
    const/4 v4, 0x0

    #@16
    return-object v4

    #@17
    .line 551
    :cond_0
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@1a
    .line 552
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    invoke-static {v4}, Lorg/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    .line 553
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@29
    .line 551
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 555
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 584
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    #@2
    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    #@5
    .line 585
    .local v1, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->writeTo(Lorg/json/JSONStringer;)V

    #@8
    .line 586
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 587
    .end local v1    # "stringer":Lorg/json/JSONStringer;
    :catch_0
    move-exception v0

    #@e
    .line 588
    .local v0, "e":Lorg/json/JSONException;
    const/4 v2, 0x0

    #@f
    return-object v2
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2
    .param p1, "indentSpaces"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 605
    new-instance v0, Lorg/json/JSONStringer;

    #@2
    invoke-direct {v0, p1}, Lorg/json/JSONStringer;-><init>(I)V

    #@5
    .line 606
    .local v0, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->writeTo(Lorg/json/JSONStringer;)V

    #@8
    .line 607
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method writeTo(Lorg/json/JSONStringer;)V
    .locals 3
    .param p1, "stringer"    # Lorg/json/JSONStringer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 611
    invoke-virtual {p1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    #@3
    .line 612
    iget-object v2, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 613
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    #@16
    goto :goto_0

    #@17
    .line 615
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    #@1a
    .line 610
    return-void
.end method
