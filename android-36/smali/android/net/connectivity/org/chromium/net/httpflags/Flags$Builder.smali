.class public final Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
.source "Flags.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/httpflags/FlagsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/Flags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/net/connectivity/org/chromium/net/httpflags/Flags;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;",
        ">;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 230
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->-$$Nest$sfgetDEFAULT_INSTANCE()Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 231
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/httpflags/Flags-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearFlags()Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;
    .registers 2

    .line 255
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->copyOnWrite()V

    .line 256
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->-$$Nest$mgetMutableFlagsMap(Landroid/net/connectivity/org/chromium/net/httpflags/Flags;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 257
    return-object p0
.end method

.method public blacklist containsFlags(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 251
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getFlags()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->getFlagsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFlagsCount()I
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getFlagsMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    .line 292
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v0

    .line 291
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFlagsOrDefault(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 307
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    .line 308
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v1

    .line 309
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    goto :goto_1a

    :cond_19
    move-object v2, p2

    :goto_1a
    return-object v2
.end method

.method public blacklist getFlagsOrThrow(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 323
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    .line 324
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->getFlagsMap()Ljava/util/Map;

    move-result-object v1

    .line 325
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 328
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    return-object v2

    .line 326
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public blacklist putAllFlags(Ljava/util/Map;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
            ">;)",
            "Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;"
        }
    .end annotation

    .line 355
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->copyOnWrite()V

    .line 356
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->-$$Nest$mgetMutableFlagsMap(Landroid/net/connectivity/org/chromium/net/httpflags/Flags;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 357
    return-object p0
.end method

.method public blacklist putFlags(Ljava/lang/String;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    .line 340
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 341
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 342
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->copyOnWrite()V

    .line 343
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v2, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->-$$Nest$mgetMutableFlagsMap(Landroid/net/connectivity/org/chromium/net/httpflags/Flags;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    return-object p0
.end method

.method public blacklist removeFlags(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 269
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 270
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->copyOnWrite()V

    .line 271
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/Flags$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/Flags;->-$$Nest$mgetMutableFlagsMap(Landroid/net/connectivity/org/chromium/net/httpflags/Flags;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-object p0
.end method
