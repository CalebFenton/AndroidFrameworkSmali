.class Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;
.super Ljava/lang/Object;
.source "PersonNamePattern.java"

# interfaces
.implements Landroid/icu/impl/personname/PersonNamePattern$Element;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/personname/PersonNamePattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameFieldImpl"
.end annotation


# instance fields
.field private blacklist fieldID:Landroid/icu/text/PersonName$NameField;

.field private blacklist modifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/text/PersonName$FieldModifier;",
            "Landroid/icu/impl/personname/FieldModifierImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetfieldID(Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;)Landroid/icu/text/PersonName$NameField;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->fieldID:Landroid/icu/text/PersonName$NameField;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmodifiers(Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->modifiers:Ljava/util/Map;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/icu/impl/personname/PersonNameFormatterImpl;)V
    .registers 9
    .param p1, "fieldNameAndModifiers"    # Ljava/lang/String;
    .param p2, "formatterImpl"    # Landroid/icu/impl/personname/PersonNameFormatterImpl;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v0, "modifierIDs":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/PersonName$FieldModifier;>;"
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "-"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .local v1, "tok":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/PersonName$NameField;->forString(Ljava/lang/String;)Landroid/icu/text/PersonName$NameField;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->fieldID:Landroid/icu/text/PersonName$NameField;

    .line 302
    :goto_19
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 303
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/PersonName$FieldModifier;->forString(Ljava/lang/String;)Landroid/icu/text/PersonName$FieldModifier;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 305
    :cond_2b
    iget-object v2, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->fieldID:Landroid/icu/text/PersonName$NameField;

    sget-object v3, Landroid/icu/text/PersonName$NameField;->SURNAME:Landroid/icu/text/PersonName$NameField;

    if-ne v2, v3, :cond_3c

    invoke-virtual {p2}, Landroid/icu/impl/personname/PersonNameFormatterImpl;->shouldCapitalizeSurname()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 306
    sget-object v2, Landroid/icu/text/PersonName$FieldModifier;->ALL_CAPS:Landroid/icu/text/PersonName$FieldModifier;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_3c
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->modifiers:Ljava/util/Map;

    .line 310
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/PersonName$FieldModifier;

    .line 311
    .local v3, "modifierID":Landroid/icu/text/PersonName$FieldModifier;
    iget-object v4, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->modifiers:Ljava/util/Map;

    invoke-static {v3, p2}, Landroid/icu/impl/personname/FieldModifierImpl;->forName(Landroid/icu/text/PersonName$FieldModifier;Landroid/icu/impl/personname/PersonNameFormatterImpl;)Landroid/icu/impl/personname/FieldModifierImpl;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .end local v3    # "modifierID":Landroid/icu/text/PersonName$FieldModifier;
    goto :goto_47

    .line 314
    :cond_5d
    iget-object v2, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->modifiers:Ljava/util/Map;

    sget-object v3, Landroid/icu/text/PersonName$FieldModifier;->RETAIN:Landroid/icu/text/PersonName$FieldModifier;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->modifiers:Ljava/util/Map;

    sget-object v3, Landroid/icu/text/PersonName$FieldModifier;->INITIAL:Landroid/icu/text/PersonName$FieldModifier;

    .line 315
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 316
    iget-object v2, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->modifiers:Ljava/util/Map;

    sget-object v3, Landroid/icu/text/PersonName$FieldModifier;->INITIAL:Landroid/icu/text/PersonName$FieldModifier;

    .line 317
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;

    .line 318
    .local v2, "initialModifier":Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;->setRetainPunctuation(Z)V

    .line 320
    .end local v2    # "initialModifier":Landroid/icu/impl/personname/FieldModifierImpl$InitialModifier;
    :cond_7f
    return-void
.end method


# virtual methods
.method public blacklist format(Landroid/icu/text/PersonName;)Ljava/lang/String;
    .registers 7
    .param p1, "name"    # Landroid/icu/text/PersonName;

    .line 340
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->modifiers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 341
    .local v0, "modifierIDs":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/text/PersonName$FieldModifier;>;"
    iget-object v1, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->fieldID:Landroid/icu/text/PersonName$NameField;

    invoke-interface {p1, v1, v0}, Landroid/icu/text/PersonName;->getFieldValue(Landroid/icu/text/PersonName$NameField;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 343
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/PersonName$FieldModifier;

    .line 344
    .local v3, "modifierID":Landroid/icu/text/PersonName$FieldModifier;
    iget-object v4, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->modifiers:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/personname/FieldModifierImpl;

    invoke-virtual {v4, v1}, Landroid/icu/impl/personname/FieldModifierImpl;->modifyField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    .end local v3    # "modifierID":Landroid/icu/text/PersonName$FieldModifier;
    goto :goto_17

    .line 347
    :cond_30
    return-object v1
.end method

.method public blacklist isLiteral()Z
    .registers 2

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPopulated(Landroid/icu/text/PersonName;)Z
    .registers 4
    .param p1, "name"    # Landroid/icu/text/PersonName;

    .line 351
    invoke-virtual {p0, p1}, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->format(Landroid/icu/text/PersonName;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v1, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->fieldID:Landroid/icu/text/PersonName$NameField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 327
    iget-object v1, p0, Landroid/icu/impl/personname/PersonNamePattern$NameFieldImpl;->modifiers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PersonName$FieldModifier;

    .line 328
    .local v2, "modifier":Landroid/icu/text/PersonName$FieldModifier;
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v2}, Landroid/icu/text/PersonName$FieldModifier;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .end local v2    # "modifier":Landroid/icu/text/PersonName$FieldModifier;
    goto :goto_19

    .line 331
    :cond_32
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
