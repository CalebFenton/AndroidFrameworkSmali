.class public Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;
.super Ljava/lang/Object;
.source "MappingFileProvider.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final LOCALE_NORMALIZATION_MAP:Ljava/util/Map;
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


# instance fields
.field private availableLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private countryCallingCodes:[I

.field private numOfEntries:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 49
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 50
    .local v0, "normalizationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "zh_TW"

    #@8
    const-string/jumbo v2, "zh_Hant"

    #@b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    .line 51
    const-string/jumbo v1, "zh_HK"

    #@11
    const-string/jumbo v2, "zh_Hant"

    #@14
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 52
    const-string/jumbo v1, "zh_MO"

    #@1a
    const-string/jumbo v2, "zh_Hant"

    #@1d
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 54
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@23
    move-result-object v1

    #@24
    sput-object v1, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->LOCALE_NORMALIZATION_MAP:Ljava/util/Map;

    #@26
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    #@6
    .line 62
    return-void
.end method

.method private appendSubsequentLocalePart(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "subsequentLocalePart"    # Ljava/lang/String;
    .param p2, "fullLocale"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    if-lez v0, :cond_0

    #@6
    .line 226
    const/16 v0, 0x5f

    #@8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 224
    :cond_0
    return-void
.end method

.method private constructFullLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;
    .param p3, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@5
    .line 219
    .local v0, "fullLocale":Ljava/lang/StringBuilder;
    invoke-direct {p0, p2, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->appendSubsequentLocalePart(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    #@8
    .line 220
    invoke-direct {p0, p3, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->appendSubsequentLocalePart(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    #@b
    .line 221
    return-object v0
.end method

.method private findBestMatchingLanguageCode(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v8, 0x5f

    #@2
    .line 176
    invoke-direct {p0, p2, p3, p4}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->constructFullLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5
    move-result-object v0

    #@6
    .line 177
    .local v0, "fullLocale":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    .line 178
    .local v1, "fullLocaleStr":Ljava/lang/String;
    sget-object v7, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->LOCALE_NORMALIZATION_MAP:Ljava/util/Map;

    #@c
    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v6

    #@10
    check-cast v6, Ljava/lang/String;

    #@12
    .line 179
    .local v6, "normalizedLocale":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@14
    .line 180
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_0

    #@1a
    .line 181
    return-object v6

    #@1b
    .line 184
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_1

    #@21
    .line 185
    return-object v1

    #@22
    .line 188
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->onlyOneOfScriptOrRegionIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_2

    #@28
    .line 189
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@2b
    move-result v7

    #@2c
    if-eqz v7, :cond_5

    #@2e
    .line 190
    return-object p2

    #@2f
    .line 192
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@32
    move-result v7

    #@33
    if-lez v7, :cond_5

    #@35
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@38
    move-result v7

    #@39
    if-lez v7, :cond_5

    #@3b
    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@40
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@43
    move-result-object v7

    #@44
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    .line 194
    .local v4, "langWithScript":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    .line 195
    .local v5, "langWithScriptStr":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@4f
    move-result v7

    #@50
    if-eqz v7, :cond_3

    #@52
    .line 196
    return-object v5

    #@53
    .line 199
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    #@55
    invoke-direct {v7, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 200
    .local v2, "langWithRegion":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    .line 201
    .local v3, "langWithRegionStr":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@67
    move-result v7

    #@68
    if-eqz v7, :cond_4

    #@6a
    .line 202
    return-object v3

    #@6b
    .line 205
    :cond_4
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@6e
    move-result v7

    #@6f
    if-eqz v7, :cond_5

    #@71
    .line 206
    return-object p2

    #@72
    .line 209
    .end local v2    # "langWithRegion":Ljava/lang/StringBuilder;
    .end local v3    # "langWithRegionStr":Ljava/lang/String;
    .end local v4    # "langWithScript":Ljava/lang/StringBuilder;
    .end local v5    # "langWithScriptStr":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, ""

    #@75
    return-object v7
.end method

.method private onlyOneOfScriptOrRegionIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "script"    # Ljava/lang/String;
    .param p2, "region"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 213
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-nez v2, :cond_1

    #@8
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@b
    move-result v2

    #@c
    if-lez v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 214
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_2

    #@15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@18
    move-result v2

    #@19
    if-gtz v2, :cond_0

    #@1b
    :cond_2
    move v0, v1

    #@1c
    goto :goto_0
.end method


# virtual methods
.method getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "countryCallingCode"    # I
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "script"    # Ljava/lang/String;
    .param p4, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 156
    const-string/jumbo v4, ""

    #@9
    return-object v4

    #@a
    .line 158
    :cond_0
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    #@c
    invoke-static {v4, p1}, Ljava/util/Arrays;->binarySearch([II)I

    #@f
    move-result v1

    #@10
    .line 159
    .local v1, "index":I
    if-gez v1, :cond_1

    #@12
    .line 160
    const-string/jumbo v4, ""

    #@15
    return-object v4

    #@16
    .line 162
    :cond_1
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    #@18
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Ljava/util/Set;

    #@1e
    .line 163
    .local v3, "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@21
    move-result v4

    #@22
    if-lez v4, :cond_2

    #@24
    .line 164
    invoke-direct {p0, v3, p2, p3, p4}, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->findBestMatchingLanguageCode(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    .line 165
    .local v2, "languageCode":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@2b
    move-result v4

    #@2c
    if-lez v4, :cond_2

    #@2e
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    .line 167
    .local v0, "fileName":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    const/16 v5, 0x5f

    #@39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    return-object v4

    #@45
    .line 171
    .end local v0    # "fileName":Ljava/lang/StringBuilder;
    .end local v2    # "languageCode":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    #@48
    return-object v4
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 6
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@3
    move-result v4

    #@4
    iput v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    #@6
    .line 88
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    #@8
    if-eqz v4, :cond_0

    #@a
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    #@c
    array-length v4, v4

    #@d
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    #@f
    if-ge v4, v5, :cond_1

    #@11
    .line 89
    :cond_0
    iget v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    #@13
    new-array v4, v4, [I

    #@15
    iput-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    #@17
    .line 91
    :cond_1
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    #@19
    if-nez v4, :cond_2

    #@1b
    .line 92
    new-instance v4, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    #@20
    iput-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    #@22
    .line 94
    :cond_2
    const/4 v0, 0x0

    #@23
    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    #@25
    if-ge v0, v4, :cond_4

    #@27
    .line 95
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    #@29
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@2c
    move-result v5

    #@2d
    aput v5, v4, v0

    #@2f
    .line 96
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@32
    move-result v2

    #@33
    .line 97
    .local v2, "numOfLangs":I
    new-instance v3, Ljava/util/HashSet;

    #@35
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    #@38
    .line 98
    .local v3, "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    #@39
    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_3

    #@3b
    .line 99
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@42
    .line 98
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_1

    #@45
    .line 101
    :cond_3
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    #@47
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4a
    .line 94
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 86
    .end local v1    # "j":I
    .end local v2    # "numOfLangs":I
    .end local v3    # "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public readFileConfigs(Ljava/util/SortedMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 73
    .local p1, "availableDataFiles":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    #@3
    move-result v4

    #@4
    iput v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    #@6
    .line 74
    iget v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    #@8
    new-array v4, v4, [I

    #@a
    iput-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    #@c
    .line 75
    new-instance v4, Ljava/util/ArrayList;

    #@e
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    #@10
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    #@13
    iput-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    #@15
    .line 76
    const/4 v2, 0x0

    #@16
    .line 77
    .local v2, "index":I
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    #@19
    move-result-object v4

    #@1a
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v1

    #@1e
    .local v1, "countryCallingCode$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_0

    #@24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Ljava/lang/Integer;

    #@2a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@2d
    move-result v0

    #@2e
    .line 78
    .local v0, "countryCallingCode":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    #@30
    add-int/lit8 v3, v2, 0x1

    #@32
    .end local v2    # "index":I
    .local v3, "index":I
    aput v0, v4, v2

    #@34
    .line 79
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    #@36
    new-instance v6, Ljava/util/HashSet;

    #@38
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3b
    move-result-object v4

    #@3c
    invoke-interface {p1, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    check-cast v4, Ljava/util/Collection;

    #@42
    invoke-direct {v6, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@45
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@48
    move v2, v3

    #@49
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    #@4a
    .line 72
    .end local v0    # "countryCallingCode":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 129
    .local v3, "output":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    #@8
    if-ge v0, v5, :cond_1

    #@a
    .line 130
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    #@c
    aget v5, v5, v0

    #@e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    .line 131
    const/16 v5, 0x7c

    #@13
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    .line 132
    new-instance v4, Ljava/util/TreeSet;

    #@18
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    #@1a
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v5

    #@1e
    check-cast v5, Ljava/util/Collection;

    #@20
    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    #@23
    .line 133
    .local v4, "sortedSetOfLangs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@26
    move-result-object v2

    #@27
    .local v2, "lang$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_0

    #@2d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v1

    #@31
    check-cast v1, Ljava/lang/String;

    #@33
    .line 134
    .local v1, "lang":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 135
    const/16 v5, 0x2c

    #@38
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3b
    goto :goto_1

    #@3c
    .line 137
    .end local v1    # "lang":Ljava/lang/String;
    :cond_0
    const/16 v5, 0xa

    #@3e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 129
    add-int/lit8 v0, v0, 0x1

    #@43
    goto :goto_0

    #@44
    .line 139
    .end local v2    # "lang$iterator":Ljava/util/Iterator;
    .end local v4    # "sortedSetOfLangs":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    return-object v5
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 109
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    #@2
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@5
    .line 110
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    #@8
    if-ge v0, v5, :cond_1

    #@a
    .line 111
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    #@c
    aget v5, v5, v0

    #@e
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@11
    .line 112
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    #@13
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v4

    #@17
    check-cast v4, Ljava/util/Set;

    #@19
    .line 113
    .local v4, "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    #@1c
    move-result v3

    #@1d
    .line 114
    .local v3, "numOfLangs":I
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@20
    .line 115
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v2

    #@24
    .local v2, "lang$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v5

    #@28
    if-eqz v5, :cond_0

    #@2a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    check-cast v1, Ljava/lang/String;

    #@30
    .line 116
    .local v1, "lang":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@33
    goto :goto_1

    #@34
    .line 110
    .end local v1    # "lang":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_0

    #@37
    .line 108
    .end local v2    # "lang$iterator":Ljava/util/Iterator;
    .end local v3    # "numOfLangs":I
    .end local v4    # "setOfLangs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method
