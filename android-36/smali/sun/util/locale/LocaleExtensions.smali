.class public Lsun/util/locale/LocaleExtensions;
.super Ljava/lang/Object;
.source "LocaleExtensions.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field public static final blacklist CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

.field public static final blacklist NUMBER_THAI:Lsun/util/locale/LocaleExtensions;


# instance fields
.field private final greylist-max-o extensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lsun/util/locale/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o id:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 47
    nop

    .line 52
    new-instance v0, Lsun/util/locale/LocaleExtensions;

    .line 54
    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    sget-object v3, Lsun/util/locale/UnicodeLocaleExtension;->CA_JAPANESE:Lsun/util/locale/UnicodeLocaleExtension;

    const-string v4, "u-ca-japanese"

    invoke-direct {v0, v4, v2, v3}, Lsun/util/locale/LocaleExtensions;-><init>(Ljava/lang/String;Ljava/lang/Character;Lsun/util/locale/Extension;)V

    sput-object v0, Lsun/util/locale/LocaleExtensions;->CALENDAR_JAPANESE:Lsun/util/locale/LocaleExtensions;

    .line 57
    new-instance v0, Lsun/util/locale/LocaleExtensions;

    .line 59
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Lsun/util/locale/UnicodeLocaleExtension;->NU_THAI:Lsun/util/locale/UnicodeLocaleExtension;

    const-string v3, "u-nu-thai"

    invoke-direct {v0, v3, v1, v2}, Lsun/util/locale/LocaleExtensions;-><init>(Ljava/lang/String;Ljava/lang/Character;Lsun/util/locale/Extension;)V

    sput-object v0, Lsun/util/locale/LocaleExtensions;->NUMBER_THAI:Lsun/util/locale/LocaleExtensions;

    .line 57
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/Character;Lsun/util/locale/Extension;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/Character;
    .param p3, "value"    # Lsun/util/locale/Extension;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    .line 64
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    .line 65
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            ">;",
            "Ljava/util/Map<",
            "Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "extensions":Ljava/util/Map;, "Ljava/util/Map<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;Ljava/lang/String;>;"
    .local p2, "uattributes":Ljava/util/Set;, "Ljava/util/Set<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;>;"
    .local p3, "ukeywords":Ljava/util/Map;, "Ljava/util/Map<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 74
    .local v0, "hasExtension":Z
    invoke-static {p2}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Set;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 75
    .local v1, "hasUAttributes":Z
    invoke-static {p3}, Lsun/util/locale/LocaleUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 77
    .local v2, "hasUKeywords":Z
    const-string v3, ""

    if-nez v0, :cond_26

    if-nez v1, :cond_26

    if-nez v2, :cond_26

    .line 78
    iput-object v3, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    .line 80
    return-void

    .line 84
    :cond_26
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 85
    .local v4, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Character;Lsun/util/locale/Extension;>;"
    if-eqz v0, :cond_73

    .line 86
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 87
    .local v6, "ext":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;

    invoke-virtual {v7}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;->value()C

    move-result v7

    invoke-static {v7}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v7

    .line 88
    .local v7, "key":C
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 90
    .local v8, "value":Ljava/lang/String;
    invoke-static {v7}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 92
    invoke-static {v8}, Lsun/util/locale/InternalLocaleBuilder;->removePrivateuseVariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 93
    if-nez v8, :cond_62

    .line 94
    goto :goto_35

    .line 98
    :cond_62
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    new-instance v10, Lsun/util/locale/Extension;

    invoke-static {v8}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v7, v11}, Lsun/util/locale/Extension;-><init>(CLjava/lang/String;)V

    invoke-interface {v4, v9, v10}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .end local v6    # "ext":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveChar;Ljava/lang/String;>;"
    .end local v7    # "key":C
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_35

    .line 102
    :cond_73
    if-nez v1, :cond_77

    if-eqz v2, :cond_e3

    .line 103
    :cond_77
    const/4 v5, 0x0

    .line 104
    .local v5, "uaset":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 106
    .local v6, "ukmap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_9d

    .line 107
    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    move-object v5, v7

    .line 108
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_85
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    .line 109
    .local v8, "cis":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    invoke-virtual {v8}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v8    # "cis":Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;
    goto :goto_85

    .line 113
    :cond_9d
    if-eqz v2, :cond_d5

    .line 114
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    move-object v6, v7

    .line 115
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_ad
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 116
    .local v8, "kwd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;

    invoke-virtual {v9}, Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;->value()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 118
    .local v10, "type":Ljava/lang/String;
    invoke-interface {v6, v9, v10}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v8    # "kwd":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lsun/util/locale/InternalLocaleBuilder$CaseInsensitiveString;Ljava/lang/String;>;"
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "type":Ljava/lang/String;
    goto :goto_ad

    .line 122
    :cond_d5
    new-instance v7, Lsun/util/locale/UnicodeLocaleExtension;

    invoke-direct {v7, v5, v6}, Lsun/util/locale/UnicodeLocaleExtension;-><init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V

    .line 123
    .local v7, "ule":Lsun/util/locale/UnicodeLocaleExtension;
    const/16 v8, 0x75

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v4, v8, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .end local v5    # "uaset":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .end local v6    # "ukmap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "ule":Lsun/util/locale/UnicodeLocaleExtension;
    :cond_e3
    invoke-interface {v4}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 128
    iput-object v3, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    goto :goto_fa

    .line 131
    :cond_f2
    invoke-static {v4}, Lsun/util/locale/LocaleExtensions;->toID(Ljava/util/SortedMap;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    .line 132
    iput-object v4, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    .line 134
    :goto_fa
    return-void
.end method

.method public static blacklist isValidKey(C)Z
    .registers 2
    .param p0, "c"    # C

    .line 187
    invoke-static {p0}, Lsun/util/locale/LanguageTag;->isExtensionSingletonChar(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

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

    .line 191
    invoke-static {p0}, Lsun/util/locale/UnicodeLocaleExtension;->isKey(Ljava/lang/String;)Z

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
            "Lsun/util/locale/Extension;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 195
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Character;Lsun/util/locale/Extension;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 197
    .local v1, "privuse":Lsun/util/locale/Extension;
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

    .line 198
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Lsun/util/locale/Extension;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    .line 199
    .local v5, "singleton":C
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/util/locale/Extension;

    .line 200
    .local v6, "extension":Lsun/util/locale/Extension;
    invoke-static {v5}, Lsun/util/locale/LanguageTag;->isPrivateusePrefixChar(C)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 201
    move-object v1, v6

    goto :goto_40

    .line 203
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3d

    .line 204
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_3d
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Character;Lsun/util/locale/Extension;>;"
    .end local v5    # "singleton":C
    .end local v6    # "extension":Lsun/util/locale/Extension;
    :goto_40
    goto :goto_e

    .line 209
    :cond_41
    if-eqz v1, :cond_4f

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4c

    .line 211
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 215
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 234
    if-ne p0, p1, :cond_4

    .line 235
    const/4 v0, 0x1

    return v0

    .line 237
    :cond_4
    instance-of v0, p1, Lsun/util/locale/LocaleExtensions;

    if-nez v0, :cond_a

    .line 238
    const/4 v0, 0x0

    return v0

    .line 240
    :cond_a
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Lsun/util/locale/LocaleExtensions;

    iget-object v1, v1, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getExtension(Ljava/lang/Character;)Lsun/util/locale/Extension;
    .registers 4
    .param p1, "key"    # Ljava/lang/Character;

    .line 144
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/Extension;

    return-object v0
.end method

.method public blacklist getExtensionValue(Ljava/lang/Character;)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/Character;

    .line 148
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-static {v1}, Lsun/util/locale/LocaleUtils;->toLower(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/Extension;

    .line 149
    .local v0, "ext":Lsun/util/locale/Extension;
    if-nez v0, :cond_18

    .line 150
    const/4 v1, 0x0

    return-object v1

    .line 152
    :cond_18
    invoke-virtual {v0}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getID()Ljava/lang/String;
    .registers 2

    .line 224
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

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

    .line 137
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 140
    :cond_d
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    .line 156
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/Extension;

    .line 157
    .local v0, "ext":Lsun/util/locale/Extension;
    if-nez v0, :cond_15

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 160
    :cond_15
    nop

    .line 161
    move-object v1, v0

    check-cast v1, Lsun/util/locale/UnicodeLocaleExtension;

    invoke-virtual {v1}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleAttributes()Ljava/util/Set;

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

    .line 165
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/Extension;

    .line 166
    .local v0, "ext":Lsun/util/locale/Extension;
    if-nez v0, :cond_15

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 169
    :cond_15
    nop

    .line 170
    move-object v1, v0

    check-cast v1, Lsun/util/locale/UnicodeLocaleExtension;

    invoke-virtual {v1}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleKeys()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "unicodeLocaleKey"    # Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/locale/Extension;

    .line 175
    .local v0, "ext":Lsun/util/locale/Extension;
    if-nez v0, :cond_12

    .line 176
    const/4 v1, 0x0

    return-object v1

    .line 178
    :cond_12
    nop

    .line 179
    move-object v1, v0

    check-cast v1, Lsun/util/locale/UnicodeLocaleExtension;

    invoke-static {p1}, Lsun/util/locale/LocaleUtils;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/util/locale/UnicodeLocaleExtension;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 229
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 183
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->extensionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Lsun/util/locale/LocaleExtensions;->id:Ljava/lang/String;

    return-object v0
.end method
