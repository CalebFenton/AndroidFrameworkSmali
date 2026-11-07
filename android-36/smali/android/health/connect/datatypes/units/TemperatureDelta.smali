.class public final Landroid/health/connect/datatypes/units/TemperatureDelta;
.super Ljava/lang/Object;
.source "TemperatureDelta.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/health/connect/datatypes/units/TemperatureDelta;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mInCelsius:D


# direct methods
.method private constructor blacklist <init>(D)V
    .registers 3
    .param p1, "value"    # D

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Landroid/health/connect/datatypes/units/TemperatureDelta;->mInCelsius:D

    .line 31
    return-void
.end method

.method public static whitelist fromCelsius(D)Landroid/health/connect/datatypes/units/TemperatureDelta;
    .registers 3
    .param p0, "value"    # D

    .line 40
    new-instance v0, Landroid/health/connect/datatypes/units/TemperatureDelta;

    invoke-direct {v0, p0, p1}, Landroid/health/connect/datatypes/units/TemperatureDelta;-><init>(D)V

    return-object v0
.end method


# virtual methods
.method public whitelist compareTo(Landroid/health/connect/datatypes/units/TemperatureDelta;)I
    .registers 6
    .param p1, "other"    # Landroid/health/connect/datatypes/units/TemperatureDelta;

    .line 62
    iget-wide v0, p0, Landroid/health/connect/datatypes/units/TemperatureDelta;->mInCelsius:D

    iget-wide v2, p1, Landroid/health/connect/datatypes/units/TemperatureDelta;->mInCelsius:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 25
    check-cast p1, Landroid/health/connect/datatypes/units/TemperatureDelta;

    invoke-virtual {p0, p1}, Landroid/health/connect/datatypes/units/TemperatureDelta;->compareTo(Landroid/health/connect/datatypes/units/TemperatureDelta;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "object"    # Ljava/lang/Object;

    .line 74
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 75
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/units/TemperatureDelta;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 76
    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/units/TemperatureDelta;

    .line 77
    .local v1, "other":Landroid/health/connect/datatypes/units/TemperatureDelta;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/units/TemperatureDelta;->getInCelsius()D

    move-result-wide v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/units/TemperatureDelta;->getInCelsius()D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-nez v3, :cond_19

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    return v0

    .line 79
    .end local v1    # "other":Landroid/health/connect/datatypes/units/TemperatureDelta;
    :cond_1b
    return v2
.end method

.method public whitelist getInCelsius()D
    .registers 3

    .line 45
    iget-wide v0, p0, Landroid/health/connect/datatypes/units/TemperatureDelta;->mInCelsius:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 89
    invoke-virtual {p0}, Landroid/health/connect/datatypes/units/TemperatureDelta;->getInCelsius()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroid/health/connect/datatypes/units/TemperatureDelta;->mInCelsius:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " celsius"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
