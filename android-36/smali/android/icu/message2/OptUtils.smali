.class Landroid/icu/message2/OptUtils;
.super Ljava/lang/Object;
.source "OptUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist asNumber(Ljava/lang/Object;)Ljava/lang/Number;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 13
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 14
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    return-object v0

    .line 16
    :cond_8
    instance-of v0, p0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    .line 18
    :try_start_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_18} :catch_19

    return-object v0

    .line 19
    :catch_19
    move-exception v0

    .line 23
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist getInteger(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 27
    .local p0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, "value":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 29
    return-object v1

    .line 31
    :cond_8
    invoke-static {v0}, Landroid/icu/message2/OptUtils;->asNumber(Ljava/lang/Object;)Ljava/lang/Number;

    move-result-object v2

    .line 32
    .local v2, "nrValue":Ljava/lang/Number;
    if-eqz v2, :cond_17

    .line 33
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 35
    :cond_17
    return-object v1
.end method

.method static blacklist getString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 47
    .local p0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/message2/OptUtils;->getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist getString(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 39
    .local p0, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_d

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 43
    :cond_d
    return-object p2
.end method
