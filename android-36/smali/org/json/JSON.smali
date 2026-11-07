.class Lorg/json/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist checkDouble(D)D
    .registers 5
    .param p0, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_d

    .line 27
    return-wide p0

    .line 25
    :cond_d
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forbidden numeric value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 31
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 32
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    .line 33
    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 34
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    .line 35
    .local v0, "stringValue":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 36
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 37
    :cond_1d
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 38
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 41
    .end local v0    # "stringValue":Ljava/lang/String;
    :cond_2b
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist toDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 45
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_8

    .line 46
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    return-object v0

    .line 47
    :cond_8
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_18

    .line 48
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 49
    :cond_18
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 51
    :try_start_1c
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_23} :catch_24

    return-object v0

    .line 52
    :catch_24
    move-exception v0

    .line 55
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist toInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 59
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    .line 60
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    return-object v0

    .line 61
    :cond_8
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_18

    .line 62
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 63
    :cond_18
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 65
    :try_start_1c
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_28} :catch_29

    return-object v0

    .line 66
    :catch_29
    move-exception v0

    .line 69
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist toLong(Ljava/lang/Object;)Ljava/lang/Long;
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 73
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_8

    .line 74
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    return-object v0

    .line 75
    :cond_8
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_18

    .line 76
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 77
    :cond_18
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 79
    :try_start_1c
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_28} :catch_29

    return-object v0

    .line 80
    :catch_29
    move-exception v0

    .line 83
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method static blacklist toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/Object;

    .line 87
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 88
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 89
    :cond_8
    if-eqz p0, :cond_f

    .line 90
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;
    .registers 6
    .param p0, "indexOrName"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "requiredType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 97
    if-nez p1, :cond_21

    .line 98
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_21
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be converted to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist typeMismatch(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;
    .registers 5
    .param p0, "actual"    # Ljava/lang/Object;
    .param p1, "requiredType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 108
    if-nez p0, :cond_a

    .line 109
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "Value is null."

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_a
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be converted to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
