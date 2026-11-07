.class public Landroid/icu/text/SimplePersonName;
.super Ljava/lang/Object;
.source "SimplePersonName.java"

# interfaces
.implements Landroid/icu/text/PersonName;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SimplePersonName$Builder;
    }
.end annotation


# instance fields
.field private final blacklist fieldValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist nameLocale:Ljava/util/Locale;

.field private final blacklist preferredOrder:Landroid/icu/text/PersonName$PreferredOrder;


# direct methods
.method private constructor blacklist <init>(Ljava/util/Locale;Landroid/icu/text/PersonName$PreferredOrder;Ljava/util/Map;)V
    .registers 5
    .param p1, "nameLocale"    # Ljava/util/Locale;
    .param p2, "preferredOrder"    # Landroid/icu/text/PersonName$PreferredOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Landroid/icu/text/PersonName$PreferredOrder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p3, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroid/icu/text/SimplePersonName;->nameLocale:Ljava/util/Locale;

    .line 132
    iput-object p2, p0, Landroid/icu/text/SimplePersonName;->preferredOrder:Landroid/icu/text/PersonName$PreferredOrder;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/icu/text/SimplePersonName;->fieldValues:Ljava/util/Map;

    .line 134
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Locale;Landroid/icu/text/PersonName$PreferredOrder;Ljava/util/Map;Landroid/icu/text/SimplePersonName-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/SimplePersonName;-><init>(Ljava/util/Locale;Landroid/icu/text/PersonName$PreferredOrder;Ljava/util/Map;)V

    return-void
.end method

.method public static blacklist builder()Landroid/icu/text/SimplePersonName$Builder;
    .registers 2

    .line 124
    new-instance v0, Landroid/icu/text/SimplePersonName$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/SimplePersonName$Builder;-><init>(Landroid/icu/text/SimplePersonName-IA;)V

    return-object v0
.end method

.method private static blacklist makeModifiedFieldName(Landroid/icu/text/PersonName$NameField;Ljava/util/Collection;)Ljava/lang/String;
    .registers 7
    .param p0, "fieldName"    # Landroid/icu/text/PersonName$NameField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PersonName$NameField;",
            "Ljava/util/Collection<",
            "Landroid/icu/text/PersonName$FieldModifier;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 223
    .local p1, "modifiers":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/icu/text/PersonName$FieldModifier;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 227
    .local v1, "sortedModifierNames":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/PersonName$FieldModifier;

    .line 228
    .local v3, "modifier":Landroid/icu/text/PersonName$FieldModifier;
    invoke-virtual {v3}, Landroid/icu/text/PersonName$FieldModifier;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 229
    .end local v3    # "modifier":Landroid/icu/text/PersonName$FieldModifier;
    goto :goto_11

    .line 230
    :cond_25
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 231
    .local v3, "modifierName":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .end local v3    # "modifierName":Ljava/lang/String;
    goto :goto_29

    .line 234
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static blacklist makeModifiersFromName(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .param p0, "modifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Landroid/icu/text/PersonName$FieldModifier;",
            ">;"
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "-"

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v0, "tok":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 240
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/PersonName$FieldModifier;>;"
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 241
    .local v2, "fieldName":Ljava/lang/String;
    :goto_10
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 242
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/text/PersonName$FieldModifier;->forString(Ljava/lang/String;)Landroid/icu/text/PersonName$FieldModifier;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 244
    :cond_22
    return-object v1
.end method


# virtual methods
.method public blacklist getFieldValue(Landroid/icu/text/PersonName$NameField;Ljava/util/Set;)Ljava/lang/String;
    .registers 11
    .param p1, "nameField"    # Landroid/icu/text/PersonName$NameField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PersonName$NameField;",
            "Ljava/util/Set<",
            "Landroid/icu/text/PersonName$FieldModifier;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 168
    .local p2, "modifiers":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/PersonName$FieldModifier;>;"
    invoke-virtual {p1}, Landroid/icu/text/PersonName$NameField;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "fieldName":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/SimplePersonName;->fieldValues:Ljava/util/Map;

    invoke-static {p1, p2}, Landroid/icu/text/SimplePersonName;->makeModifiedFieldName(Landroid/icu/text/PersonName$NameField;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_16

    .line 171
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 172
    return-object v1

    .line 176
    :cond_16
    iget-object v2, p0, Landroid/icu/text/SimplePersonName;->fieldValues:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    .line 177
    if-nez v1, :cond_23

    .line 178
    const/4 v2, 0x0

    return-object v2

    .line 179
    :cond_23
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 181
    return-object v1

    .line 185
    :cond_2b
    move-object v2, v0

    .line 186
    .local v2, "winningKey":Ljava/lang/String;
    const/4 v3, 0x0

    .line 187
    .local v3, "winningScore":I
    iget-object v4, p0, Landroid/icu/text/SimplePersonName;->fieldValues:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 188
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 189
    invoke-static {v5}, Landroid/icu/text/SimplePersonName;->makeModifiersFromName(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v6

    .line 190
    .local v6, "keyModifiers":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/PersonName$FieldModifier;>;"
    invoke-interface {p2, v6}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 191
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-gt v7, v3, :cond_65

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v7

    if-ne v7, v3, :cond_6a

    invoke-virtual {v5, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_6a

    .line 192
    :cond_65
    move-object v2, v5

    .line 193
    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v3

    .line 197
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keyModifiers":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/PersonName$FieldModifier;>;"
    :cond_6a
    goto :goto_37

    .line 198
    :cond_6b
    iget-object v4, p0, Landroid/icu/text/SimplePersonName;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 199
    invoke-static {v2}, Landroid/icu/text/SimplePersonName;->makeModifiersFromName(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 200
    return-object v1
.end method

.method public blacklist getNameLocale()Ljava/util/Locale;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/icu/text/SimplePersonName;->nameLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public blacklist getPreferredOrder()Landroid/icu/text/PersonName$PreferredOrder;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/icu/text/SimplePersonName;->preferredOrder:Landroid/icu/text/PersonName$PreferredOrder;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/SimplePersonName;->fieldValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_26

    .line 213
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/SimplePersonName;->fieldValues:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_f

    .line 217
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/SimplePersonName;->nameLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
