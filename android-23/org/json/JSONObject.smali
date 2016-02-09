.class public Lorg/json/JSONObject;
.super Ljava/lang/Object;
.source "JSONObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/json/JSONObject$1;
    }
.end annotation


# static fields
.field private static final NEGATIVE_ZERO:Ljava/lang/Double;

.field public static final NULL:Ljava/lang/Object;


# instance fields
.field private final nameValuePairs:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 82
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lorg/json/JSONObject;->NEGATIVE_ZERO:Ljava/lang/Double;

    #@8
    .line 99
    new-instance v0, Lorg/json/JSONObject$1;

    #@a
    invoke-direct {v0}, Lorg/json/JSONObject$1;-><init>()V

    #@d
    sput-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    #@f
    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    new-instance v0, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    iput-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@a
    .line 113
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
    .line 173
    new-instance v0, Lorg/json/JSONTokener;

    #@2
    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    #@8
    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 6
    .param p1, "copyFrom"    # Ljava/util/Map;

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    #@3
    .line 128
    move-object v0, p1

    #@4
    .line 129
    .local v0, "contentsTyped":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@7
    move-result-object v4

    #@8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v2

    #@c
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v4

    #@10
    if-eqz v4, :cond_1

    #@12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Ljava/util/Map$Entry;

    #@18
    .line 134
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Ljava/lang/String;

    #@1e
    .line 135
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_0

    #@20
    .line 136
    new-instance v4, Ljava/lang/NullPointerException;

    #@22
    const-string/jumbo v5, "key == null"

    #@25
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@28
    throw v4

    #@29
    .line 138
    :cond_0
    iget-object v4, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2e
    move-result-object v5

    #@2f
    invoke-static {v5}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v4, v3, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    goto :goto_0

    #@37
    .line 126
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;[Ljava/lang/String;)V
    .locals 5
    .param p1, "copyFrom"    # Lorg/json/JSONObject;
    .param p2, "names"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 182
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    #@3
    .line 183
    const/4 v2, 0x0

    #@4
    array-length v3, p2

    #@5
    :goto_0
    if-ge v2, v3, :cond_1

    #@7
    aget-object v0, p2, v2

    #@9
    .line 184
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    .line 185
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@f
    .line 186
    iget-object v4, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@11
    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 183
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@16
    goto :goto_0

    #@17
    .line 181
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_1
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
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 156
    invoke-virtual {p1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 157
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 158
    check-cast v0, Lorg/json/JSONObject;

    #@d
    .end local v0    # "object":Ljava/lang/Object;
    iget-object v1, v0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@f
    iput-object v1, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@11
    .line 151
    return-void

    #@12
    .line 160
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v1, "JSONObject"

    #@15
    invoke-static {v0, v1}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@18
    move-result-object v1

    #@19
    throw v1
.end method

.method public static numberToString(Ljava/lang/Number;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 732
    if-nez p0, :cond_0

    #@2
    .line 733
    new-instance v4, Lorg/json/JSONException;

    #@4
    const-string/jumbo v5, "Number must be non-null"

    #@7
    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 736
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    #@e
    move-result-wide v0

    #@f
    .line 737
    .local v0, "doubleValue":D
    invoke-static {v0, v1}, Lorg/json/JSON;->checkDouble(D)D

    #@12
    .line 740
    sget-object v4, Lorg/json/JSONObject;->NEGATIVE_ZERO:Ljava/lang/Double;

    #@14
    invoke-virtual {p0, v4}, Ljava/lang/Number;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 741
    const-string/jumbo v4, "-0"

    #@1d
    return-object v4

    #@1e
    .line 744
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    #@21
    move-result-wide v2

    #@22
    .line 745
    .local v2, "longValue":J
    long-to-double v4, v2

    #@23
    cmpl-double v4, v0, v4

    #@25
    if-nez v4, :cond_2

    #@27
    .line 746
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    return-object v4

    #@2c
    .line 749
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    return-object v4
.end method

.method public static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;

    #@0
    .prologue
    .line 760
    if-nez p0, :cond_0

    #@2
    .line 761
    const-string/jumbo v2, "\"\""

    #@5
    return-object v2

    #@6
    .line 764
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    #@8
    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    #@b
    .line 765
    .local v1, "stringer":Lorg/json/JSONStringer;
    sget-object v2, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    #@d
    const-string/jumbo v3, ""

    #@10
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONStringer;->open(Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    #@13
    .line 766
    invoke-virtual {v1, p0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    #@16
    .line 767
    sget-object v2, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    #@18
    sget-object v3, Lorg/json/JSONStringer$Scope;->NULL:Lorg/json/JSONStringer$Scope;

    #@1a
    const-string/jumbo v4, ""

    #@1d
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONStringer;->close(Lorg/json/JSONStringer$Scope;Lorg/json/JSONStringer$Scope;Ljava/lang/String;)Lorg/json/JSONStringer;

    #@20
    .line 768
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-object v2

    #@24
    return-object v2

    #@25
    .line 769
    .end local v1    # "stringer":Lorg/json/JSONStringer;
    :catch_0
    move-exception v0

    #@26
    .line 770
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/AssertionError;

    #@28
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@2b
    throw v2
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 787
    if-nez p0, :cond_0

    #@3
    .line 788
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    #@5
    return-object v1

    #@6
    .line 790
    :cond_0
    instance-of v1, p0, Lorg/json/JSONArray;

    #@8
    if-nez v1, :cond_1

    #@a
    instance-of v1, p0, Lorg/json/JSONObject;

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 791
    :cond_1
    return-object p0

    #@f
    .line 793
    :cond_2
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    #@11
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_3

    #@17
    .line 794
    return-object p0

    #@18
    .line 797
    :cond_3
    :try_start_0
    instance-of v1, p0, Ljava/util/Collection;

    #@1a
    if-eqz v1, :cond_4

    #@1c
    .line 798
    new-instance v1, Lorg/json/JSONArray;

    #@1e
    check-cast p0, Ljava/util/Collection;

    #@20
    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    #@23
    return-object v1

    #@24
    .line 799
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_5

    #@2e
    .line 800
    new-instance v1, Lorg/json/JSONArray;

    #@30
    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    #@33
    return-object v1

    #@34
    .line 802
    :cond_5
    instance-of v1, p0, Ljava/util/Map;

    #@36
    if-eqz v1, :cond_6

    #@38
    .line 803
    new-instance v1, Lorg/json/JSONObject;

    #@3a
    check-cast p0, Ljava/util/Map;

    #@3c
    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    #@3f
    return-object v1

    #@40
    .line 805
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_6
    instance-of v1, p0, Ljava/lang/Boolean;

    #@42
    if-nez v1, :cond_7

    #@44
    .line 806
    instance-of v1, p0, Ljava/lang/Byte;

    #@46
    .line 805
    if-nez v1, :cond_7

    #@48
    .line 807
    instance-of v1, p0, Ljava/lang/Character;

    #@4a
    .line 805
    if-nez v1, :cond_7

    #@4c
    .line 808
    instance-of v1, p0, Ljava/lang/Double;

    #@4e
    .line 805
    if-nez v1, :cond_7

    #@50
    .line 809
    instance-of v1, p0, Ljava/lang/Float;

    #@52
    .line 805
    if-nez v1, :cond_7

    #@54
    .line 810
    instance-of v1, p0, Ljava/lang/Integer;

    #@56
    .line 805
    if-nez v1, :cond_7

    #@58
    .line 811
    instance-of v1, p0, Ljava/lang/Long;

    #@5a
    .line 805
    if-nez v1, :cond_7

    #@5c
    .line 812
    instance-of v1, p0, Ljava/lang/Short;

    #@5e
    .line 805
    if-nez v1, :cond_7

    #@60
    .line 813
    instance-of v1, p0, Ljava/lang/String;

    #@62
    .line 805
    if-eqz v1, :cond_8

    #@64
    .line 814
    :cond_7
    return-object p0

    #@65
    .line 816
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    const-string/jumbo v2, "java."

    #@74
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@77
    move-result v1

    #@78
    if-eqz v1, :cond_9

    #@7a
    .line 817
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@7d
    move-result-object v1

    #@7e
    return-object v1

    #@7f
    .line 819
    :catch_0
    move-exception v0

    #@80
    .line 821
    :cond_9
    return-object v3
.end method


# virtual methods
.method public accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 300
    iget-object v2, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 301
    .local v1, "current":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 302
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@f
    move-result-object v2

    #@10
    return-object v2

    #@11
    .line 305
    :cond_0
    instance-of v2, v1, Lorg/json/JSONArray;

    #@13
    if-eqz v2, :cond_1

    #@15
    move-object v0, v1

    #@16
    .line 306
    check-cast v0, Lorg/json/JSONArray;

    #@18
    .line 307
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->checkedPut(Ljava/lang/Object;)V

    #@1b
    .line 314
    :goto_0
    return-object p0

    #@1c
    .line 309
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_1
    new-instance v0, Lorg/json/JSONArray;

    #@1e
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@21
    .line 310
    .restart local v0    # "array":Lorg/json/JSONArray;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->checkedPut(Ljava/lang/Object;)V

    #@24
    .line 311
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->checkedPut(Ljava/lang/Object;)V

    #@27
    .line 312
    iget-object v2, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@29
    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    goto :goto_0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 329
    iget-object v3, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 332
    .local v1, "current":Ljava/lang/Object;
    instance-of v3, v1, Lorg/json/JSONArray;

    #@c
    if-eqz v3, :cond_0

    #@e
    move-object v0, v1

    #@f
    .line 333
    check-cast v0, Lorg/json/JSONArray;

    #@11
    .line 342
    .local v0, "array":Lorg/json/JSONArray;
    :goto_0
    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->checkedPut(Ljava/lang/Object;)V

    #@14
    .line 344
    return-object p0

    #@15
    .line 334
    .end local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    if-nez v1, :cond_1

    #@17
    .line 335
    new-instance v2, Lorg/json/JSONArray;

    #@19
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    #@1c
    .line 336
    .local v2, "newArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@1e
    invoke-virtual {v3, p1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 337
    move-object v0, v2

    #@22
    .restart local v0    # "array":Lorg/json/JSONArray;
    goto :goto_0

    #@23
    .line 339
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "newArray":Lorg/json/JSONArray;
    :cond_1
    new-instance v3, Lorg/json/JSONException;

    #@25
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "Key "

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    const-string/jumbo v5, " is not a JSONArray"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@43
    throw v3
.end method

.method checkName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    if-nez p1, :cond_0

    #@2
    .line 349
    new-instance v0, Lorg/json/JSONException;

    #@4
    const-string/jumbo v1, "Names must be non-null"

    #@7
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 351
    :cond_0
    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 387
    iget-object v1, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 388
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@8
    .line 389
    new-instance v1, Lorg/json/JSONException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "No value for "

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 391
    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 411
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    #@7
    move-result-object v1

    #@8
    .line 412
    .local v1, "result":Ljava/lang/Boolean;
    if-nez v1, :cond_0

    #@a
    .line 413
    const-string/jumbo v2, "boolean"

    #@d
    invoke-static {p1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@10
    move-result-object v2

    #@11
    throw v2

    #@12
    .line 415
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@15
    move-result v2

    #@16
    return v2
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 444
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 445
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    #@7
    move-result-object v1

    #@8
    .line 446
    .local v1, "result":Ljava/lang/Double;
    if-nez v1, :cond_0

    #@a
    .line 447
    const-string/jumbo v2, "double"

    #@d
    invoke-static {p1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@10
    move-result-object v2

    #@11
    throw v2

    #@12
    .line 449
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    #@15
    move-result-wide v2

    #@16
    return-wide v2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 478
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 479
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    .line 480
    .local v1, "result":Ljava/lang/Integer;
    if-nez v1, :cond_0

    #@a
    .line 481
    const-string/jumbo v2, "int"

    #@d
    invoke-static {p1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@10
    move-result-object v2

    #@11
    throw v2

    #@12
    .line 483
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@15
    move-result v2

    #@16
    return v2
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 584
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 585
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 586
    check-cast v0, Lorg/json/JSONArray;

    #@a
    .end local v0    # "object":Ljava/lang/Object;
    return-object v0

    #@b
    .line 588
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v1, "JSONArray"

    #@e
    invoke-static {p1, v0, v1}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 609
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 610
    .local v0, "object":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 611
    check-cast v0, Lorg/json/JSONObject;

    #@a
    .end local v0    # "object":Ljava/lang/Object;
    return-object v0

    #@b
    .line 613
    .restart local v0    # "object":Ljava/lang/Object;
    :cond_0
    const-string/jumbo v1, "JSONObject"

    #@e
    invoke-static {p1, v0, v1}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 514
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 515
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    #@7
    move-result-object v1

    #@8
    .line 516
    .local v1, "result":Ljava/lang/Long;
    if-nez v1, :cond_0

    #@a
    .line 517
    const-string/jumbo v2, "long"

    #@d
    invoke-static {p1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@10
    move-result-object v2

    #@11
    throw v2

    #@12
    .line 519
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@15
    move-result-wide v2

    #@16
    return-wide v2
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 550
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 551
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 552
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    #@a
    .line 553
    const-string/jumbo v2, "String"

    #@d
    invoke-static {p1, v0, v2}, Lorg/json/JSON;->typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;

    #@10
    move-result-object v2

    #@11
    throw v2

    #@12
    .line 555
    :cond_0
    return-object v1
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 378
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isNull(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 369
    iget-object v2, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    .line 370
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@9
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    #@b
    if-ne v0, v2, :cond_1

    #@d
    :cond_0
    :goto_0
    return v1

    #@e
    :cond_1
    const/4 v1, 0x0

    #@f
    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
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
    .line 669
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public keys()Ljava/util/Iterator;
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
    .line 655
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public length()I
    .locals 1

    #@0
    .prologue
    .line 195
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public names()Lorg/json/JSONArray;
    .locals 3

    #@0
    .prologue
    .line 677
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 678
    const/4 v0, 0x0

    #@9
    .line 677
    :goto_0
    return-object v0

    #@a
    .line 679
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    #@c
    new-instance v1, Ljava/util/ArrayList;

    #@e
    iget-object v2, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@10
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    #@13
    move-result-object v2

    #@14
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@17
    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    #@1a
    goto :goto_0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public optBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 423
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public optBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Z

    #@0
    .prologue
    .line 431
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 432
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    #@7
    move-result-object v1

    #@8
    .line 433
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

.method public optDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 457
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public optDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # D

    #@0
    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 466
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    #@7
    move-result-object v1

    #@8
    .line 467
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

.method public optInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 491
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public optInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # I

    #@0
    .prologue
    .line 499
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 500
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    .line 501
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

.method public optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 597
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 598
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

.method public optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 622
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 623
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

.method public optLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 528
    const-wide/16 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public optLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # J

    #@0
    .prologue
    .line 538
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 539
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    #@7
    move-result-object v1

    #@8
    .line 540
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

.method public optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 563
    const-string/jumbo v0, ""

    #@3
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fallback"    # Ljava/lang/String;

    #@0
    .prologue
    .line 571
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 572
    .local v0, "object":Ljava/lang/Object;
    invoke-static {v0}, Lorg/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 573
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

.method public put(Ljava/lang/String;D)Lorg/json/JSONObject;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {p2, p3}, Lorg/json/JSON;->checkDouble(D)D

    #@9
    move-result-wide v2

    #@a
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    .line 219
    return-object p0
.end method

.method public put(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 230
    return-object p0
.end method

.method public put(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 241
    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    if-nez p2, :cond_0

    #@2
    .line 257
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    .line 258
    return-object p0

    #@8
    .line 260
    :cond_0
    instance-of v0, p2, Ljava/lang/Number;

    #@a
    if-eqz v0, :cond_1

    #@c
    move-object v0, p2

    #@d
    .line 262
    check-cast v0, Ljava/lang/Number;

    #@f
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@12
    move-result-wide v0

    #@13
    invoke-static {v0, v1}, Lorg/json/JSON;->checkDouble(D)D

    #@16
    .line 264
    :cond_1
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@18
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 265
    return-object p0
.end method

.method public put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->checkName(Ljava/lang/String;)Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    .line 206
    return-object p0
.end method

.method public putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 273
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 274
    :cond_0
    return-object p0

    #@5
    .line 276
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toJSONArray(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 5
    .param p1, "names"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 632
    new-instance v3, Lorg/json/JSONArray;

    #@3
    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    #@6
    .line 633
    .local v3, "result":Lorg/json/JSONArray;
    if-nez p1, :cond_0

    #@8
    .line 634
    return-object v4

    #@9
    .line 636
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    #@c
    move-result v1

    #@d
    .line 637
    .local v1, "length":I
    if-nez v1, :cond_1

    #@f
    .line 638
    return-object v4

    #@10
    .line 640
    :cond_1
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@13
    .line 641
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    invoke-static {v4}, Lorg/json/JSON;->toString(Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    .line 642
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    #@22
    .line 640
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 644
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 688
    :try_start_0
    new-instance v1, Lorg/json/JSONStringer;

    #@2
    invoke-direct {v1}, Lorg/json/JSONStringer;-><init>()V

    #@5
    .line 689
    .local v1, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->writeTo(Lorg/json/JSONStringer;)V

    #@8
    .line 690
    invoke-virtual {v1}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v2

    #@c
    return-object v2

    #@d
    .line 691
    .end local v1    # "stringer":Lorg/json/JSONStringer;
    :catch_0
    move-exception v0

    #@e
    .line 692
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
    .line 712
    new-instance v0, Lorg/json/JSONStringer;

    #@2
    invoke-direct {v0, p1}, Lorg/json/JSONStringer;-><init>(I)V

    #@5
    .line 713
    .local v0, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->writeTo(Lorg/json/JSONStringer;)V

    #@8
    .line 714
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method writeTo(Lorg/json/JSONStringer;)V
    .locals 4
    .param p1, "stringer"    # Lorg/json/JSONStringer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 718
    invoke-virtual {p1}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    #@3
    .line 719
    iget-object v2, p0, Lorg/json/JSONObject;->nameValuePairs:Ljava/util/LinkedHashMap;

    #@5
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v2

    #@9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Map$Entry;

    #@19
    .line 720
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Ljava/lang/String;

    #@1f
    invoke-virtual {p1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    #@22
    move-result-object v2

    #@23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    #@2a
    goto :goto_0

    #@2b
    .line 722
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    #@2e
    .line 717
    return-void
.end method
