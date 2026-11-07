.class public Landroid/icu/text/SimplePersonName$Builder;
.super Ljava/lang/Object;
.source "SimplePersonName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SimplePersonName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist fieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist locale:Ljava/util/Locale;

.field private blacklist preferredOrder:Landroid/icu/text/PersonName$PreferredOrder;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/SimplePersonName$Builder;->locale:Ljava/util/Locale;

    .line 110
    sget-object v0, Landroid/icu/text/PersonName$PreferredOrder;->DEFAULT:Landroid/icu/text/PersonName$PreferredOrder;

    iput-object v0, p0, Landroid/icu/text/SimplePersonName$Builder;->preferredOrder:Landroid/icu/text/PersonName$PreferredOrder;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SimplePersonName$Builder;->fieldValues:Ljava/util/Map;

    .line 112
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/text/SimplePersonName-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/text/SimplePersonName$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addField(Landroid/icu/text/PersonName$NameField;Ljava/util/Collection;Ljava/lang/String;)Landroid/icu/text/SimplePersonName$Builder;
    .registers 9
    .param p1, "field"    # Landroid/icu/text/PersonName$NameField;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PersonName$NameField;",
            "Ljava/util/Collection<",
            "Landroid/icu/text/PersonName$FieldModifier;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/icu/text/SimplePersonName$Builder;"
        }
    .end annotation

    .line 64
    .local p2, "modifiers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/PersonName$FieldModifier;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 65
    .local v0, "modifierNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p2, :cond_1f

    .line 66
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PersonName$FieldModifier;

    .line 67
    .local v2, "modifier":Landroid/icu/text/PersonName$FieldModifier;
    invoke-virtual {v2}, Landroid/icu/text/PersonName$FieldModifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v2    # "modifier":Landroid/icu/text/PersonName$FieldModifier;
    goto :goto_b

    .line 73
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .local v1, "fieldName":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/icu/text/PersonName$NameField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 76
    .local v3, "modifierName":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .end local v3    # "modifierName":Ljava/lang/String;
    goto :goto_2f

    .line 80
    :cond_44
    iget-object v2, p0, Landroid/icu/text/SimplePersonName$Builder;->fieldValues:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-object p0
.end method

.method public blacklist build()Landroid/icu/text/SimplePersonName;
    .registers 7

    .line 91
    iget-object v0, p0, Landroid/icu/text/SimplePersonName$Builder;->fieldValues:Ljava/util/Map;

    const-string v1, "surname"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4e

    .line 92
    iget-object v0, p0, Landroid/icu/text/SimplePersonName$Builder;->fieldValues:Ljava/util/Map;

    const-string v2, "surname-prefix"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 93
    .local v0, "surnamePrefix":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/text/SimplePersonName$Builder;->fieldValues:Ljava/util/Map;

    const-string v3, "surname-core"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 95
    .local v2, "surnameCore":Ljava/lang/String;
    if-eqz v0, :cond_3f

    if-eqz v2, :cond_3f

    .line 96
    iget-object v3, p0, Landroid/icu/text/SimplePersonName$Builder;->fieldValues:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 97
    :cond_3f
    if-eqz v0, :cond_47

    .line 98
    iget-object v3, p0, Landroid/icu/text/SimplePersonName$Builder;->fieldValues:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 99
    :cond_47
    if-eqz v2, :cond_4e

    .line 100
    iget-object v3, p0, Landroid/icu/text/SimplePersonName$Builder;->fieldValues:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .end local v0    # "surnamePrefix":Ljava/lang/String;
    .end local v2    # "surnameCore":Ljava/lang/String;
    :cond_4e
    :goto_4e
    new-instance v0, Landroid/icu/text/SimplePersonName;

    iget-object v1, p0, Landroid/icu/text/SimplePersonName$Builder;->locale:Ljava/util/Locale;

    iget-object v2, p0, Landroid/icu/text/SimplePersonName$Builder;->preferredOrder:Landroid/icu/text/PersonName$PreferredOrder;

    iget-object v3, p0, Landroid/icu/text/SimplePersonName$Builder;->fieldValues:Ljava/util/Map;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/SimplePersonName;-><init>(Ljava/util/Locale;Landroid/icu/text/PersonName$PreferredOrder;Ljava/util/Map;Landroid/icu/text/SimplePersonName-IA;)V

    return-object v0
.end method

.method public blacklist setLocale(Ljava/util/Locale;)Landroid/icu/text/SimplePersonName$Builder;
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .line 38
    iput-object p1, p0, Landroid/icu/text/SimplePersonName$Builder;->locale:Ljava/util/Locale;

    .line 39
    return-object p0
.end method

.method public blacklist setPreferredOrder(Landroid/icu/text/PersonName$PreferredOrder;)Landroid/icu/text/SimplePersonName$Builder;
    .registers 2
    .param p1, "preferredOrder"    # Landroid/icu/text/PersonName$PreferredOrder;

    .line 48
    iput-object p1, p0, Landroid/icu/text/SimplePersonName$Builder;->preferredOrder:Landroid/icu/text/PersonName$PreferredOrder;

    .line 49
    return-object p0
.end method
