.class Lorg/json/JSON;
.super Ljava/lang/Object;
.source "JSON.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static checkDouble(D)D
    .locals 4
    .param p0, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 24
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 25
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Forbidden numeric value: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 27
    :cond_1
    return-wide p0
.end method

.method static toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 31
    instance-of v1, p0, Ljava/lang/Boolean;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 32
    check-cast p0, Ljava/lang/Boolean;

    #@6
    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    #@7
    .line 33
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    #@9
    if-eqz v1, :cond_2

    #@b
    move-object v0, p0

    #@c
    .line 34
    check-cast v0, Ljava/lang/String;

    #@e
    .line 35
    .local v0, "stringValue":Ljava/lang/String;
    const-string/jumbo v1, "true"

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 36
    const/4 v1, 0x1

    #@18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@1b
    move-result-object v1

    #@1c
    return-object v1

    #@1d
    .line 37
    :cond_1
    const-string/jumbo v1, "false"

    #@20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_2

    #@26
    .line 38
    const/4 v1, 0x0

    #@27
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2a
    move-result-object v1

    #@2b
    return-object v1

    #@2c
    .line 41
    .end local v0    # "stringValue":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    #@2d
    return-object v1
.end method

.method static toDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 45
    instance-of v1, p0, Ljava/lang/Double;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 46
    check-cast p0, Ljava/lang/Double;

    #@6
    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    #@7
    .line 47
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 48
    check-cast p0, Ljava/lang/Number;

    #@d
    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    #@10
    move-result-wide v2

    #@11
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 49
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 51
    :try_start_0
    check-cast p0, Ljava/lang/String;

    #@1c
    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    .line 52
    :catch_0
    move-exception v0

    #@22
    .line 55
    :cond_2
    const/4 v1, 0x0

    #@23
    return-object v1
.end method

.method static toInteger(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 59
    instance-of v1, p0, Ljava/lang/Integer;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 60
    check-cast p0, Ljava/lang/Integer;

    #@6
    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    #@7
    .line 61
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 62
    check-cast p0, Ljava/lang/Number;

    #@d
    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    #@10
    move-result v1

    #@11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 63
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 65
    :try_start_0
    check-cast p0, Ljava/lang/String;

    #@1c
    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@1f
    move-result-wide v2

    #@20
    double-to-int v1, v2

    #@21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v1

    #@25
    return-object v1

    #@26
    .line 66
    :catch_0
    move-exception v0

    #@27
    .line 69
    :cond_2
    const/4 v1, 0x0

    #@28
    return-object v1
.end method

.method static toLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 73
    instance-of v1, p0, Ljava/lang/Long;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 74
    check-cast p0, Ljava/lang/Long;

    #@6
    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    #@7
    .line 75
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p0, Ljava/lang/Number;

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 76
    check-cast p0, Ljava/lang/Number;

    #@d
    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    #@10
    move-result-wide v2

    #@11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v1

    #@15
    return-object v1

    #@16
    .line 77
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    #@18
    if-eqz v1, :cond_2

    #@1a
    .line 79
    :try_start_0
    check-cast p0, Ljava/lang/String;

    #@1c
    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@1f
    move-result-wide v2

    #@20
    double-to-long v2, v2

    #@21
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    move-result-object v1

    #@25
    return-object v1

    #@26
    .line 80
    :catch_0
    move-exception v0

    #@27
    .line 83
    :cond_2
    const/4 v1, 0x0

    #@28
    return-object v1
.end method

.method static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 87
    instance-of v0, p0, Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 88
    check-cast p0, Ljava/lang/String;

    #@7
    .end local p0    # "value":Ljava/lang/Object;
    return-object p0

    #@8
    .line 89
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 90
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0

    #@f
    .line 92
    :cond_1
    return-object v1
.end method

.method public static typeMismatch(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;
    .locals 3
    .param p0, "indexOrName"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "requiredType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 97
    if-nez p1, :cond_0

    #@2
    .line 98
    new-instance v0, Lorg/json/JSONException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Value at "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " is null."

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 100
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    #@25
    new-instance v1, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v2, "Value "

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    const-string/jumbo v2, " at "

    #@38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 101
    const-string/jumbo v2, " of type "

    #@43
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    .line 102
    const-string/jumbo v2, " cannot be converted to "

    #@56
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61
    move-result-object v1

    #@62
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@65
    throw v0
.end method

.method public static typeMismatch(Ljava/lang/Object;Ljava/lang/String;)Lorg/json/JSONException;
    .locals 3
    .param p0, "actual"    # Ljava/lang/Object;
    .param p1, "requiredType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    #@0
    .prologue
    .line 108
    if-nez p0, :cond_0

    #@2
    .line 109
    new-instance v0, Lorg/json/JSONException;

    #@4
    const-string/jumbo v1, "Value is null."

    #@7
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 111
    :cond_0
    new-instance v0, Lorg/json/JSONException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Value "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 112
    const-string/jumbo v2, " of type "

    #@20
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 112
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 113
    const-string/jumbo v2, " cannot be converted to "

    #@33
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    #@42
    throw v0
.end method
