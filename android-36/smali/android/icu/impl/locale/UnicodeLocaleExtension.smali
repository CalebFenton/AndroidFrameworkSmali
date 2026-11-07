.class public Landroid/icu/impl/locale/UnicodeLocaleExtension;
.super Landroid/icu/impl/locale/Extension;
.source "UnicodeLocaleExtension.java"


# static fields
.field public static final blacklist CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

.field private static final blacklist EMPTY_SORTED_MAP:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EMPTY_SORTED_SET:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

.field public static final blacklist SINGLETON:C = 'u'


# instance fields
.field private blacklist _attributes:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist _keywords:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 26
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_SET:Ljava/util/SortedSet;

    .line 27
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    .line 36
    new-instance v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-direct {v0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    .line 37
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    .line 38
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    iget-object v0, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    const-string v1, "ca"

    const-string v2, "japanese"

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    const-string v1, "ca-japanese"

    iput-object v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_value:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-direct {v0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    .line 42
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    .line 43
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    iget-object v0, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    const-string v1, "nu"

    const-string v2, "thai"

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    const-string v1, "nu-thai"

    iput-object v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_value:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 48
    const/16 v0, 0x75

    invoke-direct {p0, v0}, Landroid/icu/impl/locale/Extension;-><init>(C)V

    .line 29
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_SET:Ljava/util/SortedSet;

    iput-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    .line 30
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    iput-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    .line 49
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V
    .registers 10
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

    .line 52
    .local p1, "attributes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .local p2, "keywords":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>()V

    .line 53
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 54
    iput-object p1, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    .line 56
    :cond_d
    if-eqz p2, :cond_17

    invoke-interface {p2}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 57
    iput-object p2, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    .line 60
    :cond_17
    iget-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    if-gtz v0, :cond_27

    iget-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-lez v0, :cond_86

    .line 61
    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "-"

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 63
    .local v2, "attribute":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .end local v2    # "attribute":Ljava/lang/String;
    goto :goto_32

    .line 65
    :cond_48
    iget-object v1, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    .local v2, "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 67
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 69
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7e

    .line 71
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .end local v2    # "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_7e
    goto :goto_52

    .line 74
    :cond_7f
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_value:Ljava/lang/String;

    .line 76
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_86
    return-void
.end method

.method public static blacklist isAttribute(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_17

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method public static blacklist isKey(Ljava/lang/String;)Z
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumeric(C)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->isAlpha(C)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v2, v0

    goto :goto_20

    :cond_1f
    nop

    .line 101
    :goto_20
    return v2
.end method

.method public static blacklist isSingletonChar(C)Z
    .registers 3
    .param p0, "c"    # C

    .line 91
    const/16 v0, 0x75

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist isType(Ljava/lang/String;)Z
    .registers 7
    .param p0, "s"    # Ljava/lang/String;

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "startIdx":I
    const/4 v1, 0x0

    .line 115
    .local v1, "sawSubtag":Z
    :goto_2
    const-string v2, "-"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 116
    .local v2, "idx":I
    if-gez v2, :cond_f

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_13

    :cond_f
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "subtag":Ljava/lang/String;
    :goto_13
    invoke-static {v3}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isTypeSubtag(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1b

    .line 118
    return v5

    .line 120
    :cond_1b
    const/4 v1, 0x1

    .line 121
    if-gez v2, :cond_29

    .line 122
    nop

    .line 126
    .end local v2    # "idx":I
    .end local v3    # "subtag":Ljava/lang/String;
    if-eqz v1, :cond_28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_28

    const/4 v5, 0x1

    :cond_28
    return v5

    .line 124
    .restart local v2    # "idx":I
    .restart local v3    # "subtag":Ljava/lang/String;
    :cond_29
    add-int/lit8 v0, v2, 0x1

    .line 125
    .end local v2    # "idx":I
    .end local v3    # "subtag":Ljava/lang/String;
    goto :goto_2
.end method

.method public static blacklist isTypeSubtag(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_17

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_17

    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method


# virtual methods
.method public blacklist getUnicodeLocaleAttributes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnicodeLocaleKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "unicodeLocaleKey"    # Ljava/lang/String;

    .line 87
    iget-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
