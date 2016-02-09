.class public Landroid/icu/impl/locale/UnicodeLocaleExtension;
.super Landroid/icu/impl/locale/Extension;
.source "UnicodeLocaleExtension.java"


# static fields
.field public static final CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

.field private static final EMPTY_SORTED_MAP:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_SORTED_SET:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

.field public static final SINGLETON:C = 'u'


# instance fields
.field private _attributes:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _keywords:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 20
    new-instance v0, Ljava/util/TreeSet;

    #@2
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@5
    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_SET:Ljava/util/SortedSet;

    #@7
    .line 21
    new-instance v0, Ljava/util/TreeMap;

    #@9
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    #@c
    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    #@e
    .line 30
    new-instance v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@10
    invoke-direct {v0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>()V

    #@13
    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@15
    .line 31
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@17
    new-instance v1, Ljava/util/TreeMap;

    #@19
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@1c
    iput-object v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    #@1e
    .line 32
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@20
    iget-object v0, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    #@22
    const-string/jumbo v1, "ca"

    #@25
    const-string/jumbo v2, "japanese"

    #@28
    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 33
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->CA_JAPANESE:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@2d
    const-string/jumbo v1, "ca-japanese"

    #@30
    iput-object v1, v0, Landroid/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    #@32
    .line 35
    new-instance v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@34
    invoke-direct {v0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>()V

    #@37
    sput-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@39
    .line 36
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@3b
    new-instance v1, Ljava/util/TreeMap;

    #@3d
    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    #@40
    iput-object v1, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    #@42
    .line 37
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@44
    iget-object v0, v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    #@46
    const-string/jumbo v1, "nu"

    #@49
    const-string/jumbo v2, "thai"

    #@4c
    invoke-interface {v0, v1, v2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4f
    .line 38
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->NU_THAI:Landroid/icu/impl/locale/UnicodeLocaleExtension;

    #@51
    const-string/jumbo v1, "nu-thai"

    #@54
    iput-object v1, v0, Landroid/icu/impl/locale/Extension;->_value:Ljava/lang/String;

    #@56
    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const/16 v0, 0x75

    #@2
    invoke-direct {p0, v0}, Landroid/icu/impl/locale/Extension;-><init>(C)V

    #@5
    .line 23
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_SET:Ljava/util/SortedSet;

    #@7
    iput-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    #@9
    .line 24
    sget-object v0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->EMPTY_SORTED_MAP:Ljava/util/SortedMap;

    #@b
    iput-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    #@d
    .line 41
    return-void
.end method

.method constructor <init>(Ljava/util/SortedSet;Ljava/util/SortedMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 46
    .local p1, "attributes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .local p2, "keywords":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/icu/impl/locale/UnicodeLocaleExtension;-><init>()V

    #@3
    .line 47
    if-eqz p1, :cond_0

    #@5
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    #@8
    move-result v7

    #@9
    if-lez v7, :cond_0

    #@b
    .line 48
    iput-object p1, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    #@d
    .line 50
    :cond_0
    if-eqz p2, :cond_1

    #@f
    invoke-interface {p2}, Ljava/util/SortedMap;->size()I

    #@12
    move-result v7

    #@13
    if-lez v7, :cond_1

    #@15
    .line 51
    iput-object p2, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    #@17
    .line 54
    :cond_1
    iget-object v7, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    #@19
    invoke-interface {v7}, Ljava/util/SortedSet;->size()I

    #@1c
    move-result v7

    #@1d
    if-gtz v7, :cond_2

    #@1f
    iget-object v7, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    #@21
    invoke-interface {v7}, Ljava/util/SortedMap;->size()I

    #@24
    move-result v7

    #@25
    if-lez v7, :cond_6

    #@27
    .line 55
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    .line 56
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    #@2e
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31
    move-result-object v1

    #@32
    .local v1, "attribute$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@35
    move-result v7

    #@36
    if-eqz v7, :cond_3

    #@38
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Ljava/lang/String;

    #@3e
    .line 57
    .local v0, "attribute":Ljava/lang/String;
    const-string/jumbo v7, "-"

    #@41
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    goto :goto_0

    #@49
    .line 59
    .end local v0    # "attribute":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    #@4b
    invoke-interface {v7}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    #@4e
    move-result-object v7

    #@4f
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@52
    move-result-object v4

    #@53
    .local v4, "keyword$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@56
    move-result v7

    #@57
    if-eqz v7, :cond_5

    #@59
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5c
    move-result-object v3

    #@5d
    check-cast v3, Ljava/util/Map$Entry;

    #@5f
    .line 60
    .local v3, "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@62
    move-result-object v2

    #@63
    check-cast v2, Ljava/lang/String;

    #@65
    .line 61
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@68
    move-result-object v6

    #@69
    check-cast v6, Ljava/lang/String;

    #@6b
    .line 63
    .local v6, "value":Ljava/lang/String;
    const-string/jumbo v7, "-"

    #@6e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v7

    #@72
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 64
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@78
    move-result v7

    #@79
    if-lez v7, :cond_4

    #@7b
    .line 65
    const-string/jumbo v7, "-"

    #@7e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v7

    #@82
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    goto :goto_1

    #@86
    .line 68
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x1

    #@87
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    #@8a
    move-result-object v7

    #@8b
    iput-object v7, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_value:Ljava/lang/String;

    #@8d
    .line 45
    .end local v1    # "attribute$iterator":Ljava/util/Iterator;
    .end local v4    # "keyword$iterator":Ljava/util/Iterator;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_6
    return-void
.end method

.method public static isAttribute(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x3

    #@5
    if-lt v0, v1, :cond_0

    #@7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    const/16 v1, 0x8

    #@d
    if-gt v0, v1, :cond_0

    #@f
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    :goto_0
    return v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public static isKey(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public static isSingletonChar(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    .line 85
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->toLower(C)C

    #@3
    move-result v0

    #@4
    const/16 v1, 0x75

    #@6
    if-ne v1, v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public static isType(Ljava/lang/String;)Z
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 105
    const/4 v2, 0x0

    #@2
    .line 106
    .local v2, "startIdx":I
    const/4 v1, 0x0

    #@3
    .line 108
    .local v1, "sawSubtag":Z
    :goto_0
    const-string/jumbo v5, "-"

    #@6
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@9
    move-result v0

    #@a
    .line 109
    .local v0, "idx":I
    if-gez v0, :cond_0

    #@c
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 110
    .local v3, "subtag":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/icu/impl/locale/UnicodeLocaleExtension;->isTypeSubtag(Ljava/lang/String;)Z

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_1

    #@16
    .line 111
    return v4

    #@17
    .line 109
    .end local v3    # "subtag":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    .restart local v3    # "subtag":Ljava/lang/String;
    goto :goto_1

    #@1c
    .line 113
    :cond_1
    const/4 v1, 0x1

    #@1d
    .line 114
    if-gez v0, :cond_3

    #@1f
    .line 119
    if-eqz v1, :cond_2

    #@21
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@24
    move-result v5

    #@25
    if-ge v2, v5, :cond_2

    #@27
    const/4 v4, 0x1

    #@28
    :cond_2
    return v4

    #@29
    .line 117
    :cond_3
    add-int/lit8 v2, v0, 0x1

    #@2b
    goto :goto_0
.end method

.method public static isTypeSubtag(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x3

    #@5
    if-lt v0, v1, :cond_0

    #@7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    const/16 v1, 0x8

    #@d
    if-gt v0, v1, :cond_0

    #@f
    invoke-static {p0}, Landroid/icu/impl/locale/AsciiUtil;->isAlphaNumericString(Ljava/lang/String;)Z

    #@12
    move-result v0

    #@13
    :goto_0
    return v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method


# virtual methods
.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_attributes:Ljava/util/SortedSet;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    #@2
    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "unicodeLocaleKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/icu/impl/locale/UnicodeLocaleExtension;->_keywords:Ljava/util/SortedMap;

    #@2
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method
