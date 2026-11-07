.class public Landroid/hardware/devicestate/DeviceStateUtil;
.super Ljava/lang/Object;
.source "DeviceStateUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateBaseStateIdentifier(Landroid/hardware/devicestate/DeviceState;Ljava/util/List;)I
    .registers 7
    .param p0, "currentState"    # Landroid/hardware/devicestate/DeviceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/devicestate/DeviceState;",
            "Ljava/util/List<",
            "Landroid/hardware/devicestate/DeviceState;",
            ">;)I"
        }
    .end annotation

    .line 45
    .local p1, "supportedStates":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/devicestate/DeviceState;>;"
    invoke-virtual {p0}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v0

    .line 46
    .local v0, "stateConfiguration":Landroid/hardware/devicestate/DeviceState$Configuration;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 47
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/devicestate/DeviceState;

    .line 48
    .local v2, "stateToCompare":Landroid/hardware/devicestate/DeviceState;
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 49
    goto :goto_3b

    .line 51
    :cond_20
    invoke-virtual {v0}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object v3

    .line 52
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/devicestate/DeviceState;

    .line 51
    invoke-static {v3, v4}, Landroid/hardware/devicestate/DeviceStateUtil;->isDeviceStateMatchingPhysicalProperties(Ljava/util/Set;Landroid/hardware/devicestate/DeviceState;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 53
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/devicestate/DeviceState;

    invoke-virtual {v3}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    return v3

    .line 46
    .end local v2    # "stateToCompare":Landroid/hardware/devicestate/DeviceState;
    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 56
    .end local v1    # "i":I
    :cond_3e
    const/4 v1, -0x1

    return v1
.end method

.method private static blacklist isDeviceStateMatchingPhysicalProperties(Ljava/util/Set;Landroid/hardware/devicestate/DeviceState;)Z
    .registers 4
    .param p1, "state"    # Landroid/hardware/devicestate/DeviceState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/devicestate/DeviceState;",
            ")Z"
        }
    .end annotation

    .line 66
    .local p0, "physicalProperties":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    nop

    .line 67
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 68
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/hardware/devicestate/DeviceState;->hasProperty(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 70
    const/4 v1, 0x0

    return v1

    .line 73
    :cond_1d
    const/4 v1, 0x1

    return v1
.end method
