.class public final Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
.source "BaseFeatureOverrides.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureStateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;",
        ">;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureStateOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 642
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->-$$Nest$sfgetDEFAULT_INSTANCE()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 643
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearEnabled()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;
    .registers 2

    .line 701
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->copyOnWrite()V

    .line 702
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->-$$Nest$mclearEnabled(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)V

    .line 703
    return-object p0
.end method

.method public blacklist clearParams()Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;
    .registers 2

    .line 752
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->copyOnWrite()V

    .line 753
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->-$$Nest$mgetMutableParamsMap(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 754
    return-object p0
.end method

.method public blacklist containsParams(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 747
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 748
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->getParamsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getEnabled()Z
    .registers 2

    .line 672
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->getEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 802
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->getParamsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getParamsCount()I
    .registers 2

    .line 709
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->getParamsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getParamsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 838
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    .line 839
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->getParamsMap()Ljava/util/Map;

    move-result-object v0

    .line 838
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getParamsOrDefault(Ljava/lang/String;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 878
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 879
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    .line 880
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->getParamsMap()Ljava/util/Map;

    move-result-object v1

    .line 881
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/com/google/protobuf/ByteString;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/ByteString;

    goto :goto_1a

    :cond_19
    move-object v2, p2

    :goto_1a
    return-object v2
.end method

.method public blacklist getParamsOrThrow(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 919
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 920
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    .line 921
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->getParamsMap()Ljava/util/Map;

    move-result-object v1

    .line 922
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/com/google/protobuf/ByteString;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 925
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/com/google/protobuf/ByteString;

    return-object v2

    .line 923
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public blacklist hasEnabled()Z
    .registers 2

    .line 658
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->hasEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist putAllParams(Ljava/util/Map;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;)",
            "Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;"
        }
    .end annotation

    .line 1002
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/com/google/protobuf/ByteString;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->copyOnWrite()V

    .line 1003
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->-$$Nest$mgetMutableParamsMap(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1004
    return-object p0
.end method

.method public blacklist putParams(Ljava/lang/String;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 962
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 963
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 964
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->copyOnWrite()V

    .line 965
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v2, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->-$$Nest$mgetMutableParamsMap(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    return-object p0
.end method

.method public blacklist removeParams(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 791
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 792
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->copyOnWrite()V

    .line 793
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->-$$Nest$mgetMutableParamsMap(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    return-object p0
.end method

.method public blacklist setEnabled(Z)Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 686
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->copyOnWrite()V

    .line 687
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;->-$$Nest$msetEnabled(Landroid/net/connectivity/org/chromium/net/httpflags/BaseFeatureOverrides$FeatureState;Z)V

    .line 688
    return-object p0
.end method
