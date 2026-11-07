.class public Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;
.super Ljava/lang/Object;
.source "MappingFileProvider.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final blacklist LOCALE_NORMALIZATION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist availableLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist countryCallingCodes:[I

.field private blacklist numOfEntries:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v0, "normalizationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "zh_TW"

    const-string v2, "zh_Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "zh_HK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "zh_MO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->LOCALE_NORMALIZATION_MAP:Ljava/util/Map;

    .line 57
    .end local v0    # "normalizationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    .line 65
    return-void
.end method

.method private blacklist appendSubsequentLocalePart(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "subsequentLocalePart"    # Ljava/lang/String;
    .param p2, "fullLocale"    # Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 230
    const/16 v0, 0x5f

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_f
    return-void
.end method

.method private blacklist constructFullLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 5
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "fullLocale":Ljava/lang/StringBuilder;
    invoke-direct {p0, p2, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->appendSubsequentLocalePart(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 224
    invoke-direct {p0, p3, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->appendSubsequentLocalePart(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 225
    return-object v0
.end method

.method private blacklist findBestMatchingLanguageCode(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 180
    .local p1, "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3, p4}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->constructFullLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    .local v0, "fullLocale":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "fullLocaleStr":Ljava/lang/String;
    sget-object v2, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->LOCALE_NORMALIZATION_MAP:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    .local v2, "normalizedLocale":Ljava/lang/String;
    if-eqz v2, :cond_19

    .line 184
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 185
    return-object v2

    .line 188
    :cond_19
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 189
    return-object v1

    .line 192
    :cond_20
    invoke-direct {p0, p3, p4}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->onlyOneOfScriptOrRegionIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 193
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 194
    return-object p2

    .line 196
    :cond_2d
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_72

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_72

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 198
    .local v3, "langWithScript":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 199
    .local v5, "langWithScriptStr":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 200
    return-object v5

    .line 203
    :cond_53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 204
    .local v4, "langWithRegion":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "langWithRegionStr":Ljava/lang/String;
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 206
    return-object v6

    .line 209
    :cond_6b
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 210
    return-object p2

    .line 213
    .end local v3    # "langWithScript":Ljava/lang/StringBuilder;
    .end local v4    # "langWithRegion":Ljava/lang/StringBuilder;
    .end local v5    # "langWithScriptStr":Ljava/lang/String;
    .end local v6    # "langWithRegionStr":Ljava/lang/String;
    :cond_72
    const-string v3, ""

    return-object v3
.end method

.method private blacklist onlyOneOfScriptOrRegionIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_18

    .line 218
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 217
    :goto_1b
    return v0
.end method


# virtual methods
.method blacklist getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "countryCallingCode"    # I
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    .line 159
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_9

    .line 160
    return-object v1

    .line 162
    :cond_9
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 163
    .local v0, "index":I
    if-gez v0, :cond_12

    .line 164
    return-object v1

    .line 166
    :cond_12
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 167
    .local v2, "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_41

    .line 168
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->findBestMatchingLanguageCode(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "languageCode":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_41

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v1, "fileName":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 175
    .end local v1    # "fileName":Ljava/lang/StringBuilder;
    .end local v3    # "languageCode":Ljava/lang/String;
    :cond_41
    return-object v1
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 7
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    .line 90
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    array-length v0, v0

    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    if-ge v0, v1, :cond_17

    .line 91
    :cond_11
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    .line 93
    :cond_17
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    if-nez v0, :cond_22

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    .line 96
    :cond_22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_23
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    if-ge v0, v1, :cond_4d

    .line 97
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    aput v2, v1, v0

    .line 98
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 99
    .local v1, "numOfLangs":I
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 100
    .local v2, "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_39
    if-ge v3, v1, :cond_45

    .line 101
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 103
    .end local v3    # "j":I
    :cond_45
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v1    # "numOfLangs":I
    .end local v2    # "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 105
    .end local v0    # "i":I
    :cond_4d
    return-void
.end method

.method public blacklist readFileConfigs(Ljava/util/SortedMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 75
    .local p1, "availableDataFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v0

    iput v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    .line 76
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "index":I
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 80
    .local v2, "countryCallingCode":I
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    aput v2, v3, v0

    .line 81
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    new-instance v3, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v2    # "countryCallingCode":I
    move v0, v4

    goto :goto_1e

    .line 83
    .end local v4    # "index":I
    .restart local v0    # "index":I
    :cond_4a
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    if-ge v1, v2, :cond_44

    .line 132
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 135
    .local v2, "sortedSetOfLangs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 136
    .local v4, "lang":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .end local v4    # "lang":Ljava/lang/String;
    goto :goto_27

    .line 139
    :cond_3c
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    .end local v2    # "sortedSetOfLangs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 141
    .end local v1    # "i":I
    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 7
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    if-ge v0, v1, :cond_37

    .line 113
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 114
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 115
    .local v1, "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    .line 116
    .local v2, "numOfLangs":I
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 117
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 118
    .local v4, "lang":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 119
    .end local v4    # "lang":Ljava/lang/String;
    goto :goto_24

    .line 112
    .end local v1    # "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "numOfLangs":I
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 121
    .end local v0    # "i":I
    :cond_37
    return-void
.end method
