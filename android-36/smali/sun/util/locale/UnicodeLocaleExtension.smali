.class public Lsun/util/locale/UnicodeLocaleExtension;
.super Lsun/util/locale/Extension;
.source "UnicodeLocaleExtension.java"


# static fields
.field public static final blacklist CA_JAPANESE:Lsun/util/locale/UnicodeLocaleExtension;

.field public static final blacklist NU_THAI:Lsun/util/locale/UnicodeLocaleExtension;

.field public static final blacklist SINGLETON:C = 'u'


# instance fields
.field private final blacklist attributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist keywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Lsun/util/locale/UnicodeLocaleExtension;

    const-string v1, "ca"

    const-string v2, "japanese"

    invoke-direct {v0, v1, v2}, Lsun/util/locale/UnicodeLocaleExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lsun/util/locale/UnicodeLocaleExtension;->CA_JAPANESE:Lsun/util/locale/UnicodeLocaleExtension;

    .line 51
    new-instance v0, Lsun/util/locale/UnicodeLocaleExtension;

    const-string v1, "nu"

    const-string v2, "thai"

    invoke-direct {v0, v1, v2}, Lsun/util/locale/UnicodeLocaleExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lsun/util/locale/UnicodeLocaleExtension;->NU_THAI:Lsun/util/locale/UnicodeLocaleExtension;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x75

    invoke-direct {p0, v1, v0}, Lsun/util/locale/Extension;-><init>(CLjava/lang/String;)V

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    .line 57
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    .line 58
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 61
    .local p1, "attributes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .local p2, "keywords":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v0, 0x75

    invoke-direct {p0, v0}, Lsun/util/locale/Extension;-><init>(C)V

    .line 62
    if-eqz p1, :cond_a

    .line 63
    iput-object p1, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    goto :goto_10

    .line 65
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    .line 67
    :goto_10
    if-eqz p2, :cond_15

    .line 68
    iput-object p2, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    goto :goto_1b

    .line 70
    :cond_15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    .line 73
    :goto_1b
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7e

    .line 74
    :cond_2b
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    .local v0, "sj":Ljava/util/StringJoiner;
    iget-object v1, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    .local v2, "attribute":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 77
    .end local v2    # "attribute":Ljava/lang/String;
    goto :goto_38

    .line 78
    :cond_48
    iget-object v1, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 79
    .local v2, "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 80
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 82
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 83
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_76

    .line 84
    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 86
    .end local v2    # "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_76
    goto :goto_52

    .line 87
    :cond_77
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lsun/util/locale/UnicodeLocaleExtension;->setValue(Ljava/lang/String;)V

    .line 89
    .end local v0    # "sj":Ljava/util/StringJoiner;
    :cond_7e
    return-void
.end method

.method public static blacklist isAttribute(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 116
    .local v0, "len":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_13

    const/16 v1, 0x8

    if-gt v0, v1, :cond_13

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static blacklist isKey(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist isSingletonChar(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 110
    const/16 v0, 0x75

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isTypeSubtag(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 127
    .local v0, "len":I
    const/4 v1, 0x3

    if-lt v0, v1, :cond_13

    const/16 v1, 0x8

    if-gt v0, v1, :cond_13

    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method


# virtual methods
.method public bridge synthetic blacklist getID()Ljava/lang/String;
    .registers 2

    .line 43
    invoke-super {p0}, Lsun/util/locale/Extension;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getKey()C
    .registers 2

    .line 43
    invoke-super {p0}, Lsun/util/locale/Extension;->getKey()C

    move-result v0

    return v0
.end method

.method public blacklist getUnicodeLocaleAttributes()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne v0, v1, :cond_9

    .line 93
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    return-object v0

    .line 95
    :cond_9
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnicodeLocaleKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-ne v0, v1, :cond_b

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 102
    :cond_b
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "unicodeLocaleKey"    # Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 43
    invoke-super {p0}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 43
    invoke-super {p0}, Lsun/util/locale/Extension;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
