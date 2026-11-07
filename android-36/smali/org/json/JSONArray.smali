.class public Lorg/json/JSONArray;
.super Ljava/lang/Object;
.source "JSONArray.java"


# instance fields
.field private final greylist values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    .line 60
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Object;)V
    .registers 5
    .param p1, "array"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 120
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 121
    .local v0, "length":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    if-ge v1, v0, :cond_29

    .line 123
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 125
    .end local v1    # "i":I
    :cond_29
    return-void

    .line 118
    .end local v0    # "length":I
    :cond_2a
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a primitive array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 110
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Lorg/json/JSONTokener;)V

    .line 111
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Collection;)V
    .registers 4
    .param p1, "copyFrom"    # Ljava/util/Collection;

    .line 72
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 73
    if-eqz p1, :cond_1b

    .line 74
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    .line 78
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1b
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/json/JSONTokener;)V
    .registers 4
    .param p1, "readFrom"    # Lorg/json/JSONTokener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_13

    .line 96
    move-object v1, v0

    check-cast v1, Lorg/json/JSONArray;

    iget-object v1, v1, Lorg/json/JSONArray;->values:Ljava/util/List;

    iput-object v1, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    .line 100
    return-void

    .line 98
    :cond_13
    const-string v1, "JSONArray"

    invoke-static {v0, v1}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method greylist-max-o checkedPut(Ljava/lang/Object;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 195
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 196
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/json/JSON;->checkDouble(D)D

    .line 199
    :cond_e
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 200
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 622
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    iget-object v0, v0, Lorg/json/JSONArray;->values:Ljava/util/List;

    iget-object v1, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public whitelist test-api get(I)Ljava/lang/Object;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 289
    :try_start_0
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 290
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_9

    .line 293
    return-object v0

    .line 291
    :cond_9
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/json/JSONArray;
    .end local p1    # "index":I
    throw v1
    :try_end_28
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_28} :catch_28

    .line 294
    .end local v0    # "value":Ljava/lang/Object;
    .restart local p0    # "this":Lorg/json/JSONArray;
    .restart local p1    # "index":I
    :catch_28
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range [0.."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getBoolean(I)Z
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 329
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 330
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    .line 331
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_f

    .line 334
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 332
    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "boolean"

    invoke-static {v2, v0, v3}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public whitelist test-api getDouble(I)D
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 363
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 364
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    .line 365
    .local v1, "result":Ljava/lang/Double;
    if-eqz v1, :cond_f

    .line 368
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 366
    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "double"

    invoke-static {v2, v0, v3}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public whitelist test-api getInt(I)I
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 397
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 398
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 399
    .local v1, "result":Ljava/lang/Integer;
    if-eqz v1, :cond_f

    .line 402
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 400
    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "int"

    invoke-static {v2, v0, v3}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public whitelist test-api getJSONArray(I)Lorg/json/JSONArray;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 498
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 499
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_c

    .line 500
    move-object v1, v0

    check-cast v1, Lorg/json/JSONArray;

    return-object v1

    .line 502
    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "JSONArray"

    invoke-static {v1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api getJSONObject(I)Lorg/json/JSONObject;
    .registers 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 524
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_c

    .line 525
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    return-object v1

    .line 527
    :cond_c
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "JSONObject"

    invoke-static {v1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api getLong(I)J
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 431
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 432
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    .line 433
    .local v1, "result":Ljava/lang/Long;
    if-eqz v1, :cond_f

    .line 436
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 434
    :cond_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "long"

    invoke-static {v2, v0, v3}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public whitelist test-api getString(I)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 464
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 465
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 469
    return-object v1

    .line 467
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "String"

    invoke-static {v2, v0, v3}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 627
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isNull(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 276
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 277
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_d

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method

.method public whitelist test-api join(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "separator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 568
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 569
    .local v0, "stringer":Lorg/json/JSONStringer;
    sget-object v1, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONStringer;->open(Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 570
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_13
    if-ge v1, v3, :cond_28

    .line 571
    if-lez v1, :cond_1c

    .line 572
    iget-object v4, v0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_1c
    iget-object v4, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 570
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 576
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_28
    sget-object v1, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    sget-object v3, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    invoke-virtual {v0, v1, v3, v2}, Lorg/json/JSONStringer;->close(Lorg/json/JSONStringer$Scope;Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 577
    iget-object v1, v0, Lorg/json/JSONStringer;->out:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 131
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api opt(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 304
    if-ltz p1, :cond_12

    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_12

    .line 307
    :cond_b
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 305
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api optBoolean(I)Z
    .registers 3
    .param p1, "index"    # I

    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optBoolean(IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api optBoolean(IZ)Z
    .registers 6
    .param p1, "index"    # I
    .param p2, "fallback"    # Z

    .line 350
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 351
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    .line 352
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_10

    :cond_f
    move v2, p2

    :goto_10
    return v2
.end method

.method public whitelist test-api optDouble(I)D
    .registers 4
    .param p1, "index"    # I

    .line 376
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api optDouble(ID)D
    .registers 8
    .param p1, "index"    # I
    .param p2, "fallback"    # D

    .line 384
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 385
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    .line 386
    .local v1, "result":Ljava/lang/Double;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_10

    :cond_f
    move-wide v2, p2

    :goto_10
    return-wide v2
.end method

.method public whitelist test-api optInt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optInt(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api optInt(II)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "fallback"    # I

    .line 418
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 420
    .local v1, "result":Ljava/lang/Integer;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_10

    :cond_f
    move v2, p2

    :goto_10
    return v2
.end method

.method public whitelist test-api optJSONArray(I)Lorg/json/JSONArray;
    .registers 4
    .param p1, "index"    # I

    .line 511
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 512
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Lorg/json/JSONArray;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public whitelist test-api optJSONObject(I)Lorg/json/JSONObject;
    .registers 4
    .param p1, "index"    # I

    .line 536
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 537
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public whitelist test-api optLong(I)J
    .registers 4
    .param p1, "index"    # I

    .line 444
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONArray;->optLong(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api optLong(IJ)J
    .registers 8
    .param p1, "index"    # I
    .param p2, "fallback"    # J

    .line 452
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 453
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    .line 454
    .local v1, "result":Ljava/lang/Long;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_10

    :cond_f
    move-wide v2, p2

    :goto_10
    return-wide v2
.end method

.method public whitelist test-api optString(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 477
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api optString(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "index"    # I
    .param p2, "fallback"    # Ljava/lang/String;

    .line 485
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 486
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_c

    move-object v2, v1

    goto :goto_d

    :cond_c
    move-object v2, p2

    :goto_d
    return-object v2
.end method

.method public whitelist test-api put(D)Lorg/json/JSONArray;
    .registers 6
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-static {p1, p2}, Lorg/json/JSON;->checkDouble(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    return-object p0
.end method

.method public whitelist test-api put(I)Lorg/json/JSONArray;
    .registers 4
    .param p1, "value"    # I

    .line 162
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-object p0
.end method

.method public whitelist test-api put(ID)Lorg/json/JSONArray;
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 223
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(II)Lorg/json/JSONArray;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 234
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(IJ)Lorg/json/JSONArray;
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 245
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(ILjava/lang/Object;)Lorg/json/JSONArray;
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 260
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_e

    .line 262
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/json/JSON;->checkDouble(D)D

    .line 264
    :cond_e
    :goto_e
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_1d

    .line 265
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 267
    :cond_1d
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-object p0
.end method

.method public whitelist test-api put(IZ)Lorg/json/JSONArray;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 210
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(J)Lorg/json/JSONArray;
    .registers 5
    .param p1, "value"    # J

    .line 172
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    return-object p0
.end method

.method public whitelist test-api put(Ljava/lang/Object;)Lorg/json/JSONArray;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 187
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-object p0
.end method

.method public whitelist test-api put(Z)Lorg/json/JSONArray;
    .registers 4
    .param p1, "value"    # Z

    .line 140
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    return-object p0
.end method

.method public whitelist test-api remove(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 315
    if-ltz p1, :cond_12

    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_12

    .line 318
    :cond_b
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 316
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api toJSONObject(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .registers 7
    .param p1, "names"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 548
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 549
    .local v0, "result":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    iget-object v2, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 550
    .local v1, "length":I
    if-nez v1, :cond_17

    .line 551
    const/4 v2, 0x0

    return-object v2

    .line 553
    :cond_17
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v1, :cond_2c

    .line 554
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 555
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 557
    .end local v2    # "i":I
    :cond_2c
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 586
    :try_start_0
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 587
    .local v0, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->writeTo(Lorg/json/JSONStringer;)V

    .line 588
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    .line 589
    .end local v0    # "stringer":Lorg/json/JSONStringer;
    :catch_d
    move-exception v0

    .line 590
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api toString(I)Ljava/lang/String;
    .registers 4
    .param p1, "indentSpaces"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 607
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0, p1}, Lorg/json/JSONStringer;-><init>(I)V

    .line 608
    .local v0, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->writeTo(Lorg/json/JSONStringer;)V

    .line 609
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method greylist writeTo(Lorg/json/JSONStringer;)V
    .registers 4
    .param p1, "stringer"    # Lorg/json/JSONStringer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 614
    invoke-virtual {p1}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 615
    iget-object v0, p0, Lorg/json/JSONArray;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 616
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 617
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_9

    .line 618
    :cond_17
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 619
    return-void
.end method
