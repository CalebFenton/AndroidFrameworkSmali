.class public Landroid/icu/impl/locale/LocaleExtensions;
.super Ljava/lang/Object;
.source "LocaleExtensions.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field public static final blacklist CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

.field public static final blacklist EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

.field private static final greylist-max-o EMPTY_MAP:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Character;",
            "Landroid/icu/impl/locale/Extension;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;


# instance fields
.field private greylist-max-o _id:Ljava/lang/String;

.field private greylist-max-o _map:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Character;",
            "Landroid/icu/impl/locale/Extension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 27
    nop

    .line 32
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    .line 40
    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    invoke-direct {v0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    .line 41
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    const-string v1, ""

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    .line 42
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_EXTENSIONS:Landroid/icu/impl/locale/LocaleExtensions;

    sget-object v1, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    .line 44
    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    invoke-direct {v0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    .line 45
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    const-string v1, "u-ca-japanese"

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    .line 46
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    .line 47
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->CALENDAR_JAPANESE:Landroid/icu/impl/locale/LocaleExtensions;

    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-interface {v0, v2, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Landroid/icu/impl/locale/LocaleExtensions;

    invoke-direct {v0}, Landroid/icu/impl/locale/LocaleExtensions;-><init>()V

    sput-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    .line 50
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    const-string v2, "u-nu-thai"

    iput-object v2, v0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    .line 51
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    iput-object v2, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    .line 52
    sget-object v0, Landroid/icu/impl/locale/LocaleExtensions;->NUMBER_THAI:Landroid/icu/impl/locale/LocaleExtensions;

    iget-object v0, v0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p1, "extensions":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;Ljava/lang/String;>;"
    .local p2, "uattributes":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;>;"
    .local p3, "ukeywords":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_f

    move v2, v0

    goto :goto_10

    :cond_f
    move v2, v1

    .line 64
    .local v2, "hasExtension":Z
    :goto_10
    if-eqz p2, :cond_1a

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_1a

    move v3, v0

    goto :goto_1b

    :cond_1a
    move v3, v1

    .line 65
    .local v3, "hasUAttributes":Z
    :goto_1b
    if-eqz p3, :cond_24

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_24

    goto :goto_25

    :cond_24
    move v0, v1

    .line 67
    .local v0, "hasUKeywords":Z
    :goto_25
    const-string v1, ""

    if-nez v2, :cond_34

    if-nez v3, :cond_34

    if-nez v0, :cond_34

    .line 68
    sget-object v4, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    iput-object v4, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    .line 69
    iput-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    .line 70
    return-void

    .line 74
    :cond_34
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    iput-object v4, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    .line 75
    if-eqz v2, :cond_85

    .line 76
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_45
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 77
    .local v5, "ext":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v6}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v6

    invoke-static {v6}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v6

    .line 78
    .local v6, "key":C
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 80
    .local v7, "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 82
    invoke-static {v7}, Landroid/icu/impl/locale/InternalLocaleBuilder;->removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    if-nez v7, :cond_72

    .line 84
    goto :goto_45

    .line 88
    :cond_72
    new-instance v8, Landroid/icu/impl/locale/Extension;

    invoke-static {v7}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Landroid/icu/impl/locale/Extension;-><init>(CLjava/lang/String;)V

    .line 89
    .local v8, "e":Landroid/icu/impl/locale/Extension;
    iget-object v9, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v9, v10, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v5    # "ext":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveChar;Ljava/lang/String;>;"
    .end local v6    # "key":C
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "e":Landroid/icu/impl/locale/Extension;
    goto :goto_45

    .line 93
    :cond_85
    if-nez v3, :cond_89

    if-eqz v0, :cond_f7

    .line 94
    :cond_89
    const/4 v4, 0x0

    .line 95
    .local v4, "uaset":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 97
    .local v5, "ukmap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_af

    .line 98
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    move-object v4, v6

    .line 99
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_97
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_af

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    .line 100
    .local v7, "cis":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    invoke-virtual {v7}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v7    # "cis":Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;
    goto :goto_97

    .line 104
    :cond_af
    if-eqz v0, :cond_e7

    .line 105
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    move-object v5, v6

    .line 106
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_bf
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 107
    .local v7, "kwd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v8}, Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, "type":Ljava/lang/String;
    invoke-virtual {v5, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v7    # "kwd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/icu/impl/locale/InternalLocaleBuilder$CaseInsensitiveString;Ljava/lang/String;>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    goto :goto_bf

    .line 113
    :cond_e7
    new-instance v6, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-direct {v6, v4, v5}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V

    .line 114
    .local v6, "ule":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    iget-object v7, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 v8, 0x75

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v4    # "uaset":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    .end local v5    # "ukmap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "ule":Landroid/icu/impl/locale/UnicodeLocaleExtension;
    :cond_f7
    iget-object v4, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->size()I

    move-result v4

    if-nez v4, :cond_106

    .line 119
    sget-object v4, Landroid/icu/impl/locale/LocaleExtensions;->EMPTY_MAP:Ljava/util/SortedMap;

    iput-object v4, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    .line 120
    iput-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    goto :goto_10e

    .line 122
    :cond_106
    iget-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-static {v1}, Landroid/icu/impl/locale/LocaleExtensions;->toID(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    .line 124
    :goto_10e
    return-void
.end method

.method public static blacklist isValidKey(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 174
    invoke-static {p0}, Landroid/icu/impl/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static blacklist isValidUnicodeLocaleKey(Ljava/lang/String;)Z
    .registers 2
    .param p0, "ukey"    # Ljava/lang/String;

    .line 178
    invoke-static {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static greylist-max-o toID(Ljava/util/SortedMap;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Character;",
            "Landroid/icu/impl/locale/Extension;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 182
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Character;Landroid/icu/impl/locale/Extension;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 184
    .local v1, "privuse":Landroid/icu/impl/locale/Extension;
    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "-"

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 185
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Landroid/icu/impl/locale/Extension;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    .line 186
    .local v5, "singleton":C
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/locale/Extension;

    .line 187
    .local v6, "extension":Landroid/icu/impl/locale/Extension;
    invoke-static {v5}, Landroid/icu/impl/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 188
    move-object v1, v6

    goto :goto_40

    .line 190
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3d

    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :cond_3d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Landroid/icu/impl/locale/Extension;>;"
    .end local v5    # "singleton":C
    .end local v6    # "extension":Landroid/icu/impl/locale/Extension;
    :goto_40
    goto :goto_e

    .line 196
    :cond_41
    if-eqz v1, :cond_4f

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4c

    .line 198
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    :cond_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 202
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 222
    if-ne p0, p1, :cond_4

    .line 223
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_4
    instance-of v0, p1, Landroid/icu/impl/locale/LocaleExtensions;

    if-nez v0, :cond_a

    .line 226
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/locale/LocaleExtensions;

    iget-object v1, v1, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getExtension(Ljava/lang/Character;)Landroid/icu/impl/locale/Extension;
    .registers 4
    .param p1, "key"    # Ljava/lang/Character;

    .line 131
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/Extension;

    return-object v0
.end method

.method public blacklist getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/Character;

    .line 135
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/Extension;

    .line 136
    .local v0, "ext":Landroid/icu/impl/locale/Extension;
    if-nez v0, :cond_18

    .line 137
    const/4 v1, 0x0

    return-object v1

    .line 139
    :cond_18
    invoke-virtual {v0}, Landroid/icu/impl/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getID()Ljava/lang/String;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKeys()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
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

    .line 143
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/Extension;

    .line 144
    .local v0, "ext":Landroid/icu/impl/locale/Extension;
    if-nez v0, :cond_15

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 147
    :cond_15
    nop

    .line 148
    move-object v1, v0

    check-cast v1, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-virtual {v1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

    move-result-object v1

    return-object v1
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

    .line 152
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/Extension;

    .line 153
    .local v0, "ext":Landroid/icu/impl/locale/Extension;
    if-nez v0, :cond_15

    .line 154
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 156
    :cond_15
    nop

    .line 157
    move-object v1, v0

    check-cast v1, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-virtual {v1}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "unicodeLocaleKey"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/Extension;

    .line 162
    .local v0, "ext":Landroid/icu/impl/locale/Extension;
    if-nez v0, :cond_12

    .line 163
    const/4 v1, 0x0

    return-object v1

    .line 165
    :cond_12
    nop

    .line 166
    move-object v1, v0

    check-cast v1, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 170
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_map:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 208
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleExtensions;->_id:Ljava/lang/String;

    return-object v0
.end method
