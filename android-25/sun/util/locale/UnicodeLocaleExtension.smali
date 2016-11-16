.class public Lsun/util/locale/UnicodeLocaleExtension;
.super Lsun/util/locale/Extension;
.source "UnicodeLocaleExtension.java"


# static fields
.field public static final CA_JAPANESE:Lsun/util/locale/UnicodeLocaleExtension;

.field public static final NU_THAI:Lsun/util/locale/UnicodeLocaleExtension;

.field public static final SINGLETON:C = 'u'


# instance fields
.field private final attributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keywords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
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
    .line 49
    new-instance v0, Lsun/util/locale/UnicodeLocaleExtension;

    #@2
    const-string/jumbo v1, "ca"

    #@5
    const-string/jumbo v2, "japanese"

    #@8
    invoke-direct {v0, v1, v2}, Lsun/util/locale/UnicodeLocaleExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 48
    sput-object v0, Lsun/util/locale/UnicodeLocaleExtension;->CA_JAPANESE:Lsun/util/locale/UnicodeLocaleExtension;

    #@d
    .line 51
    new-instance v0, Lsun/util/locale/UnicodeLocaleExtension;

    #@f
    const-string/jumbo v1, "nu"

    #@12
    const-string/jumbo v2, "thai"

    #@15
    invoke-direct {v0, v1, v2}, Lsun/util/locale/UnicodeLocaleExtension;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 50
    sput-object v0, Lsun/util/locale/UnicodeLocaleExtension;->NU_THAI:Lsun/util/locale/UnicodeLocaleExtension;

    #@1a
    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v0

    #@9
    const-string/jumbo v1, "-"

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    const/16 v1, 0x75

    #@1a
    invoke-direct {p0, v1, v0}, Lsun/util/locale/Extension;-><init>(CLjava/lang/String;)V

    #@1d
    .line 55
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    #@23
    .line 56
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    #@26
    move-result-object v0

    #@27
    iput-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    #@29
    .line 53
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
    .line 60
    .local p1, "attributes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .local p2, "keywords":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v7, 0x75

    #@2
    invoke-direct {p0, v7}, Lsun/util/locale/Extension;-><init>(C)V

    #@5
    .line 61
    if-eqz p1, :cond_0

    #@7
    .line 62
    iput-object p1, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    #@9
    .line 66
    :goto_0
    if-eqz p2, :cond_1

    #@b
    .line 67
    iput-object p2, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    #@d
    .line 72
    :goto_1
    iget-object v7, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    #@f
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    #@12
    move-result v7

    #@13
    if-eqz v7, :cond_2

    #@15
    iget-object v7, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    #@17
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_2

    #@1d
    .line 59
    :goto_2
    return-void

    #@1e
    .line 64
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@21
    move-result-object v7

    #@22
    iput-object v7, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    #@24
    goto :goto_0

    #@25
    .line 69
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@28
    move-result-object v7

    #@29
    iput-object v7, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    #@2b
    goto :goto_1

    #@2c
    .line 73
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    .line 74
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    #@33
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@36
    move-result-object v1

    #@37
    .local v1, "attribute$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3a
    move-result v7

    #@3b
    if-eqz v7, :cond_3

    #@3d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@40
    move-result-object v0

    #@41
    check-cast v0, Ljava/lang/String;

    #@43
    .line 75
    .local v0, "attribute":Ljava/lang/String;
    const-string/jumbo v7, "-"

    #@46
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v7

    #@4a
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    goto :goto_3

    #@4e
    .line 77
    .end local v0    # "attribute":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    #@50
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@53
    move-result-object v7

    #@54
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v4

    #@58
    .local v4, "keyword$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v7

    #@5c
    if-eqz v7, :cond_5

    #@5e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v3

    #@62
    check-cast v3, Ljava/util/Map$Entry;

    #@64
    .line 78
    .local v3, "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@67
    move-result-object v2

    #@68
    check-cast v2, Ljava/lang/String;

    #@6a
    .line 79
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@6d
    move-result-object v6

    #@6e
    check-cast v6, Ljava/lang/String;

    #@70
    .line 81
    .local v6, "value":Ljava/lang/String;
    const-string/jumbo v7, "-"

    #@73
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v7

    #@77
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 82
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@7d
    move-result v7

    #@7e
    if-lez v7, :cond_4

    #@80
    .line 83
    const-string/jumbo v7, "-"

    #@83
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v7

    #@87
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    goto :goto_4

    #@8b
    .line 86
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keyword":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "value":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x1

    #@8c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    #@8f
    move-result-object v7

    #@90
    invoke-virtual {p0, v7}, Lsun/util/locale/UnicodeLocaleExtension;->setValue(Ljava/lang/String;)V

    #@93
    goto :goto_2
.end method

.method public static isAttribute(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 115
    .local v0, "len":I
    const/4 v1, 0x3

    #@5
    if-lt v0, v1, :cond_0

    #@7
    const/16 v1, 0x8

    #@9
    if-gt v0, v1, :cond_0

    #@b
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    :goto_0
    return v1

    #@10
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method

.method public static isKey(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 120
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-ne v0, v1, :cond_0

    #@7
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

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
    .line 109
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->toLower(C)C

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

.method public static isTypeSubtag(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    .line 126
    .local v0, "len":I
    const/4 v1, 0x3

    #@5
    if-lt v0, v1, :cond_0

    #@7
    const/16 v1, 0x8

    #@9
    if-gt v0, v1, :cond_0

    #@b
    invoke-static {p0}, Lsun/util/locale/LocaleUtils;->isAlphaNumericString(Ljava/lang/String;)Z

    #@e
    move-result v1

    #@f
    :goto_0
    return v1

    #@10
    :cond_0
    const/4 v1, 0x0

    #@11
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getID()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/util/locale/Extension;->getID()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getKey()C
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/util/locale/Extension;->getKey()C

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getUnicodeLocaleAttributes()Ljava/util/Set;
    .locals 2
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
    .line 91
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    #@2
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 92
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    #@8
    return-object v0

    #@9
    .line 94
    :cond_0
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->attributes:Ljava/util/Set;

    #@b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public getUnicodeLocaleKeys()Ljava/util/Set;
    .locals 2
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
    .line 98
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    #@2
    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 99
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 101
    :cond_0
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    #@d
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@10
    move-result-object v0

    #@11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "unicodeLocaleKey"    # Ljava/lang/String;

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Lsun/util/locale/UnicodeLocaleExtension;->keywords:Ljava/util/Map;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/lang/String;

    #@8
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/util/locale/Extension;->getValue()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    invoke-super {p0}, Lsun/util/locale/Extension;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
