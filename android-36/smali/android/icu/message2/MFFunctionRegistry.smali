.class public Landroid/icu/message2/MFFunctionRegistry;
.super Ljava/lang/Object;
.source "MFFunctionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/message2/MFFunctionRegistry$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final blacklist classToFormatter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist formattersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/message2/FormatterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist selectorsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/message2/SelectorFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetclassToFormatter(Landroid/icu/message2/MFFunctionRegistry;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/icu/message2/MFFunctionRegistry;->classToFormatter:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetformattersMap(Landroid/icu/message2/MFFunctionRegistry;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/icu/message2/MFFunctionRegistry;->formattersMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetselectorsMap(Landroid/icu/message2/MFFunctionRegistry;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/icu/message2/MFFunctionRegistry;->selectorsMap:Ljava/util/Map;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/icu/message2/MFFunctionRegistry$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/icu/message2/MFFunctionRegistry$Builder;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->-$$Nest$fgetformattersMap(Landroid/icu/message2/MFFunctionRegistry$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/icu/message2/MFFunctionRegistry;->formattersMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->-$$Nest$fgetselectorsMap(Landroid/icu/message2/MFFunctionRegistry$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/icu/message2/MFFunctionRegistry;->selectorsMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Landroid/icu/message2/MFFunctionRegistry$Builder;->-$$Nest$fgetclassToFormatter(Landroid/icu/message2/MFFunctionRegistry$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/icu/message2/MFFunctionRegistry;->classToFormatter:Ljava/util/Map;

    .line 44
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/message2/MFFunctionRegistry$Builder;Landroid/icu/message2/MFFunctionRegistry-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/icu/message2/MFFunctionRegistry;-><init>(Landroid/icu/message2/MFFunctionRegistry$Builder;)V

    return-void
.end method

.method public static blacklist builder()Landroid/icu/message2/MFFunctionRegistry$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    new-instance v0, Landroid/icu/message2/MFFunctionRegistry$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/message2/MFFunctionRegistry$Builder;-><init>(Landroid/icu/message2/MFFunctionRegistry-IA;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getDefaultFormatterNameForType(Ljava/lang/Class;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry;->classToFormatter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 113
    return-object v0

    .line 116
    :cond_b
    iget-object v1, p0, Landroid/icu/message2/MFFunctionRegistry;->classToFormatter:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 117
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 120
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/String;>;"
    :cond_34
    goto :goto_15

    .line 121
    :cond_35
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getDefaultFormatterTypes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry;->classToFormatter:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFormatter(Ljava/lang/String;)Landroid/icu/message2/FormatterFactory;
    .registers 3
    .param p1, "formatterName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry;->formattersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/message2/FormatterFactory;

    return-object v0
.end method

.method public blacklist getFormatterNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry;->formattersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSelector(Ljava/lang/String;)Landroid/icu/message2/SelectorFactory;
    .registers 3
    .param p1, "selectorName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry;->selectorsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/message2/SelectorFactory;

    return-object v0
.end method

.method public blacklist getSelectorNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry;->selectorsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
