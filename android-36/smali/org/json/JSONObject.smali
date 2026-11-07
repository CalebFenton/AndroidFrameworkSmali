.class public Lorg/json/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# static fields
.field private static final greylist NEGATIVE_ZERO:Ljava/lang/Double;

.field public static final whitelist test-api NULL:Ljava/lang/Object;


# instance fields
.field private final greylist nameValuePairs:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 91
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lorg/json/JSONObject;->NEGATIVE_ZERO:Ljava/lang/Double;

    .line 108
    new-instance v0, Lorg/json/JSONObject$1;

    invoke-direct {v0}, Lorg/json/JSONObject$1;-><init>()V

    sput-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    .line 127
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 185
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 186
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Map;)V
    .registers 8
    .param p1, "copyFrom"    # Ljava/util/Map;

    .line 139
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    move-object v0, p1

    .line 141
    .local v0, "contentsTyped":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 146
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_2e

    .line 150
    iget-object v4, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_c

    .line 148
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .restart local v3    # "key":Ljava/lang/String;
    :cond_2e
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v4, "key == null"

    invoke-direct {v1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 152
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_36
    return-void
.end method

.method public constructor whitelist test-api <init>(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .registers 8
    .param p1, "copyFrom"    # Lorg/json/JSONObject;
    .param p2, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 195
    array-length v0, p2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    aget-object v2, p2, v1

    .line 196
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 197
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_14

    .line 198
    iget-object v4, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 201
    :cond_17
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

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 169
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_13

    .line 170
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    iget-object v1, v1, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    iput-object v1, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    .line 174
    return-void

    .line 172
    :cond_13
    const-string v1, "JSONObject"

    invoke-static {v0, v1}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1
.end method

.method public static whitelist test-api numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .registers 7
    .param p0, "number"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 746
    if-eqz p0, :cond_27

    .line 750
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 751
    .local v0, "doubleValue":D
    invoke-static {v0, v1}, Lorg/json/JSON;->checkDouble(D)D

    .line 754
    sget-object v2, Lorg/json/JSONObject;->NEGATIVE_ZERO:Ljava/lang/Double;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 755
    const-string v2, "-0"

    return-object v2

    .line 758
    :cond_14
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 759
    .local v2, "longValue":J
    long-to-double v4, v2

    cmpl-double v4, v0, v4

    if-nez v4, :cond_22

    .line 760
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 763
    :cond_22
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 747
    .end local v0    # "doubleValue":D
    .end local v2    # "longValue":J
    :cond_27
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Number must be non-null"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # Ljava/lang/String;

    .line 774
    const-string v0, ""

    if-nez p0, :cond_7

    .line 775
    const-string v0, "\"\""

    return-object v0

    .line 778
    :cond_7
    :try_start_7
    new-instance v1, Lorg/json/JSONStringer;

    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    .line 779
    .local v1, "stringer":Lorg/json/JSONStringer;
    sget-object v2, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONStringer;->open(Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 780
    invoke-virtual {v1, p0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 781
    sget-object v2, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    sget-object v3, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    invoke-virtual {v1, v2, v3, v0}, Lorg/json/JSONStringer;->close(Lorg/json/JSONStringer$Scope;Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 782
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_1f} :catch_20

    return-object v0

    .line 783
    .end local v1    # "stringer":Lorg/json/JSONStringer;
    :catch_20
    move-exception v0

    .line 784
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static whitelist test-api wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p0, "o"    # Ljava/lang/Object;

    .line 801
    if-nez p0, :cond_5

    .line 802
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    return-object v0

    .line 804
    :cond_5
    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_85

    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_f

    goto/16 :goto_85

    .line 807
    :cond_f
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 808
    return-object p0

    .line 811
    :cond_18
    :try_start_18
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_25

    .line 812
    new-instance v0, Lorg/json/JSONArray;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 813
    :cond_25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 814
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 816
    :cond_35
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_42

    .line 817
    new-instance v0, Lorg/json/JSONObject;

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0

    .line 819
    :cond_42
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_81

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_81

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_81

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_81

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_81

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_81

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_81

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_81

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_67

    goto :goto_81

    .line 830
    :cond_67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 831
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_7f} :catch_82

    return-object v0

    .line 834
    :cond_80
    goto :goto_83

    .line 828
    :cond_81
    :goto_81
    return-object p0

    .line 833
    :catch_82
    move-exception v0

    .line 835
    :goto_83
    const/4 v0, 0x0

    return-object v0

    .line 805
    :cond_85
    :goto_85
    return-object p0
.end method


# virtual methods
.method public whitelist test-api accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 311
    .local v0, "current":Ljava/lang/Object;
    if-nez v0, :cond_11

    .line 312
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    return-object v1

    .line 315
    :cond_11
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_1c

    .line 316
    move-object v1, v0

    check-cast v1, Lorg/json/JSONArray;

    .line 317
    .local v1, "array":Lorg/json/JSONArray;
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->checkedPut(Ljava/lang/Object;)V

    .line 318
    .end local v1    # "array":Lorg/json/JSONArray;
    goto :goto_2c

    .line 319
    :cond_1c
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 320
    .restart local v1    # "array":Lorg/json/JSONArray;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->checkedPut(Ljava/lang/Object;)V

    .line 321
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->checkedPut(Ljava/lang/Object;)V

    .line 322
    iget-object v2, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .end local v1    # "array":Lorg/json/JSONArray;
    :goto_2c
    return-object p0
.end method

.method public whitelist test-api append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 340
    .local v0, "current":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_12

    .line 341
    move-object v1, v0

    check-cast v1, Lorg/json/JSONArray;

    .local v1, "array":Lorg/json/JSONArray;
    goto :goto_20

    .line 342
    .end local v1    # "array":Lorg/json/JSONArray;
    :cond_12
    if-nez v0, :cond_24

    .line 343
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 344
    .local v1, "newArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    nop

    .line 346
    .local v1, "array":Lorg/json/JSONArray;
    nop

    .line 350
    :goto_20
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->checkedPut(Ljava/lang/Object;)V

    .line 352
    return-object p0

    .line 347
    .end local v1    # "array":Lorg/json/JSONArray;
    :cond_24
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a JSONArray"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist checkName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 357
    if-eqz p1, :cond_3

    .line 360
    return-object p1

    .line 358
    :cond_3
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Names must be non-null"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 397
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_9

    .line 400
    return-object v0

    .line 398
    :cond_9
    new-instance v1, Lorg/json/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getBoolean(Ljava/lang/String;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 420
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    .line 421
    .local v1, "result":Ljava/lang/Boolean;
    if-eqz v1, :cond_f

    .line 424
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 422
    :cond_f
    const-string v2, "boolean"

    invoke-static {p1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public whitelist test-api getDouble(Ljava/lang/String;)D
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 453
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 454
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    .line 455
    .local v1, "result":Ljava/lang/Double;
    if-eqz v1, :cond_f

    .line 458
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2

    .line 456
    :cond_f
    const-string v2, "double"

    invoke-static {p1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public whitelist test-api getInt(Ljava/lang/String;)I
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 487
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 488
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 489
    .local v1, "result":Ljava/lang/Integer;
    if-eqz v1, :cond_f

    .line 492
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 490
    :cond_f
    const-string v2, "int"

    invoke-static {p1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public whitelist test-api getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 593
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 594
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_c

    .line 595
    move-object v1, v0

    check-cast v1, Lorg/json/JSONArray;

    return-object v1

    .line 597
    :cond_c
    const-string v1, "JSONArray"

    invoke-static {p1, v0, v1}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 618
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 619
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_c

    .line 620
    move-object v1, v0

    check-cast v1, Lorg/json/JSONObject;

    return-object v1

    .line 622
    :cond_c
    const-string v1, "JSONObject"

    invoke-static {p1, v0, v1}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api getLong(Ljava/lang/String;)J
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 524
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    .line 525
    .local v1, "result":Ljava/lang/Long;
    if-eqz v1, :cond_f

    .line 528
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 526
    :cond_f
    const-string v2, "long"

    invoke-static {p1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public whitelist test-api getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 559
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 560
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 561
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_b

    .line 564
    return-object v1

    .line 562
    :cond_b
    const-string v2, "String"

    invoke-static {p1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    move-result-object v2

    throw v2
.end method

.method public whitelist test-api has(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isNull(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 378
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 379
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_f

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method public greylist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api keys()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 207
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api names()Lorg/json/JSONArray;
    .registers 4

    .line 690
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 691
    const/4 v0, 0x0

    goto :goto_1a

    .line 692
    :cond_a
    new-instance v0, Lorg/json/JSONArray;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 690
    :goto_1a
    return-object v0
.end method

.method public whitelist test-api opt(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api optBoolean(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api optBoolean(Ljava/lang/String;Z)Z
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Z

    .line 440
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 441
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v1

    .line 442
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

.method public whitelist test-api optDouble(Ljava/lang/String;)D
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 466
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api optDouble(Ljava/lang/String;D)D
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # D

    .line 474
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 475
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v1

    .line 476
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

.method public whitelist test-api optInt(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api optInt(Ljava/lang/String;I)I
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # I

    .line 508
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 509
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    .line 510
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

.method public whitelist test-api optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 606
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 607
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

.method public whitelist test-api optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 631
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 632
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

.method public whitelist test-api optLong(Ljava/lang/String;)J
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 537
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api optLong(Ljava/lang/String;J)J
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # J

    .line 547
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 548
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    .line 549
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

.method public whitelist test-api optString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 572
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    .line 580
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 581
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_c

    move-object v2, v1

    goto :goto_d

    :cond_c
    move-object v2, p2

    :goto_d
    return-object v2
.end method

.method public whitelist test-api put(Ljava/lang/String;D)Lorg/json/JSONObject;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Lorg/json/JSON;->checkDouble(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-object p0
.end method

.method public whitelist test-api put(Ljava/lang/String;I)Lorg/json/JSONObject;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-object p0
.end method

.method public whitelist test-api put(Ljava/lang/String;J)Lorg/json/JSONObject;
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-object p0
.end method

.method public whitelist test-api put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 268
    if-nez p2, :cond_8

    .line 269
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    return-object p0

    .line 272
    :cond_8
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_16

    .line 274
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/json/JSON;->checkDouble(D)D

    .line 276
    :cond_16
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-object p0
.end method

.method public whitelist test-api put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    return-object p0
.end method

.method public whitelist test-api putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 285
    if-eqz p1, :cond_a

    if-nez p2, :cond_5

    goto :goto_a

    .line 288
    :cond_5
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 286
    :cond_a
    :goto_a
    return-object p0
.end method

.method public whitelist test-api remove(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toJSONArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 7
    .param p1, "names"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 641
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 642
    .local v0, "result":Lorg/json/JSONArray;
    const/4 v1, 0x0

    if-nez p1, :cond_9

    .line 643
    return-object v1

    .line 645
    :cond_9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 646
    .local v2, "length":I
    if-nez v2, :cond_10

    .line 647
    return-object v1

    .line 649
    :cond_10
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v2, :cond_25

    .line 650
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 651
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 649
    .end local v3    # "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 653
    .end local v1    # "i":I
    :cond_25
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 701
    :try_start_0
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 702
    .local v0, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->writeTo(Lorg/json/JSONStringer;)V

    .line 703
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v1

    .line 704
    .end local v0    # "stringer":Lorg/json/JSONStringer;
    :catch_d
    move-exception v0

    .line 705
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

    .line 725
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0, p1}, Lorg/json/JSONStringer;-><init>(I)V

    .line 726
    .local v0, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->writeTo(Lorg/json/JSONStringer;)V

    .line 727
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method greylist writeTo(Lorg/json/JSONStringer;)V
    .registers 6
    .param p1, "stringer"    # Lorg/json/JSONStringer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 732
    invoke-virtual {p1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 733
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 734
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 735
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_d

    .line 736
    :cond_2b
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 737
    return-void
.end method
