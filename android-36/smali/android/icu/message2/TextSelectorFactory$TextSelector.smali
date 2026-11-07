.class Landroid/icu/message2/TextSelectorFactory$TextSelector;
.super Ljava/lang/Object;
.source "TextSelectorFactory.java"

# interfaces
.implements Landroid/icu/message2/Selector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/message2/TextSelectorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextSelector"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/message2/TextSelectorFactory-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/message2/TextSelectorFactory$TextSelector;-><init>()V

    return-void
.end method

.method private blacklist matches(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .line 49
    const-string v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 50
    const/4 v0, 0x1

    return v0

    .line 52
    :cond_a
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist matches(Ljava/lang/Object;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "variableOptions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_8

    .line 36
    return-object v0

    .line 38
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 39
    .local v2, "key":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Landroid/icu/message2/TextSelectorFactory$TextSelector;->matches(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 40
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .end local v2    # "key":Ljava/lang/String;
    :cond_21
    goto :goto_c

    .line 43
    :cond_22
    new-instance v1, Landroid/icu/message2/TextSelectorFactory$TextSelector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/icu/message2/TextSelectorFactory$TextSelector$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 44
    return-object v0
.end method
