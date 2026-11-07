.class public Landroid/icu/message2/MFFunctionRegistry$Builder;
.super Ljava/lang/Object;
.source "MFFunctionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/MFFunctionRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method static bridge synthetic blacklist -$$Nest$fgetclassToFormatter(Landroid/icu/message2/MFFunctionRegistry$Builder;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->classToFormatter:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetformattersMap(Landroid/icu/message2/MFFunctionRegistry$Builder;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->formattersMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetselectorsMap(Landroid/icu/message2/MFFunctionRegistry$Builder;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->selectorsMap:Ljava/util/Map;

    return-object p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->formattersMap:Ljava/util/Map;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->selectorsMap:Ljava/util/Map;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->classToFormatter:Ljava/util/Map;

    .line 182
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/message2/MFFunctionRegistry-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/message2/MFFunctionRegistry$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAll(Landroid/icu/message2/MFFunctionRegistry;)Landroid/icu/message2/MFFunctionRegistry$Builder;
    .registers 4
    .param p1, "functionRegistry"    # Landroid/icu/message2/MFFunctionRegistry;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->formattersMap:Ljava/util/Map;

    invoke-static {p1}, Landroid/icu/message2/MFFunctionRegistry;->-$$Nest$fgetformattersMap(Landroid/icu/message2/MFFunctionRegistry;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 196
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->selectorsMap:Ljava/util/Map;

    invoke-static {p1}, Landroid/icu/message2/MFFunctionRegistry;->-$$Nest$fgetselectorsMap(Landroid/icu/message2/MFFunctionRegistry;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 197
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->classToFormatter:Ljava/util/Map;

    invoke-static {p1}, Landroid/icu/message2/MFFunctionRegistry;->-$$Nest$fgetclassToFormatter(Landroid/icu/message2/MFFunctionRegistry;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 198
    return-object p0
.end method

.method public blacklist build()Landroid/icu/message2/MFFunctionRegistry;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 346
    new-instance v0, Landroid/icu/message2/MFFunctionRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/message2/MFFunctionRegistry;-><init>(Landroid/icu/message2/MFFunctionRegistry$Builder;Landroid/icu/message2/MFFunctionRegistry-IA;)V

    return-object v0
.end method

.method public blacklist clearDefaultFormatterNames()Landroid/icu/message2/MFFunctionRegistry$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->classToFormatter:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 288
    return-object p0
.end method

.method public blacklist clearFormatters()Landroid/icu/message2/MFFunctionRegistry$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->formattersMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 243
    return-object p0
.end method

.method public blacklist clearSelectors()Landroid/icu/message2/MFFunctionRegistry$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->selectorsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 333
    return-object p0
.end method

.method public blacklist removeDefaultFormatterNameForType(Ljava/lang/Class;)Landroid/icu/message2/MFFunctionRegistry$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/icu/message2/MFFunctionRegistry$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->classToFormatter:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    return-object p0
.end method

.method public blacklist removeFormatter(Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;
    .registers 3
    .param p1, "formatterName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->formattersMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-object p0
.end method

.method public blacklist removeSelector(Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;
    .registers 3
    .param p1, "selectorName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->selectorsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    return-object p0
.end method

.method public blacklist setDefaultFormatterNameForType(Ljava/lang/Class;Ljava/lang/String;)Landroid/icu/message2/MFFunctionRegistry$Builder;
    .registers 4
    .param p2, "formatterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/message2/MFFunctionRegistry$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 258
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->classToFormatter:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    return-object p0
.end method

.method public blacklist setFormatter(Ljava/lang/String;Landroid/icu/message2/FormatterFactory;)Landroid/icu/message2/MFFunctionRegistry$Builder;
    .registers 4
    .param p1, "formatterName"    # Ljava/lang/String;
    .param p2, "formatterFactory"    # Landroid/icu/message2/FormatterFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->formattersMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-object p0
.end method

.method public blacklist setSelector(Ljava/lang/String;Landroid/icu/message2/SelectorFactory;)Landroid/icu/message2/MFFunctionRegistry$Builder;
    .registers 4
    .param p1, "selectorName"    # Ljava/lang/String;
    .param p2, "selectorFactory"    # Landroid/icu/message2/SelectorFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/icu/message2/MFFunctionRegistry$Builder;->selectorsMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-object p0
.end method
