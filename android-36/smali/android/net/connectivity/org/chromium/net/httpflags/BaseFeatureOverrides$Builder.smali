.class public final Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
.source "BaseFeatureOverrides.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverridesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;",
        ">;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverridesOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 1293
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->-$$Nest$sfgetDEFAULT_INSTANCE()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 1294
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearFeatureStates()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;
    .registers 2

    .line 1318
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->copyOnWrite()V

    .line 1319
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->-$$Nest$mgetMutableFeatureStatesMap(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1320
    return-object p0
.end method

.method public blacklist containsFeatureStates(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1314
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->getFeatureStatesMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getFeatureStates()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1343
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->getFeatureStatesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFeatureStatesCount()I
    .registers 2

    .line 1300
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->getFeatureStatesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getFeatureStatesMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;"
        }
    .end annotation

    .line 1354
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    .line 1355
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->getFeatureStatesMap()Ljava/util/Map;

    move-result-object v0

    .line 1354
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFeatureStatesOrDefault(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    .line 1369
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1370
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    .line 1371
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->getFeatureStatesMap()Ljava/util/Map;

    move-result-object v1

    .line 1372
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    goto :goto_1a

    :cond_19
    move-object v2, p2

    :goto_1a
    return-object v2
.end method

.method public blacklist getFeatureStatesOrThrow(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 1385
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1386
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    .line 1387
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->getFeatureStatesMap()Ljava/util/Map;

    move-result-object v1

    .line 1388
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1391
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    return-object v2

    .line 1389
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public blacklist putAllFeatureStates(Ljava/util/Map;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
            ">;)",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;"
        }
    .end annotation

    .line 1418
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->copyOnWrite()V

    .line 1419
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->-$$Nest$mgetMutableFeatureStatesMap(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1420
    return-object p0
.end method

.method public blacklist putFeatureStates(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    .line 1403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1404
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1405
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->copyOnWrite()V

    .line 1406
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v2, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->-$$Nest$mgetMutableFeatureStatesMap(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    return-object p0
.end method

.method public blacklist removeFeatureStates(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 1332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1333
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->copyOnWrite()V

    .line 1334
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;->-$$Nest$mgetMutableFeatureStatesMap(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    return-object p0
.end method
