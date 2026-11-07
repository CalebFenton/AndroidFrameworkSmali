.class public Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;
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

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 50
    const-string v1, "zh_TW"

    const-string v2, "zh_Hant"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "zh_HK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "zh_MO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->LOCALE_NORMALIZATION_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    return-void
.end method

.method private blacklist appendSubsequentLocalePart(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 3

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_e

    const/16 p0, 0x5f

    .line 228
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    return-void
.end method

.method private blacklist constructFullLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 5

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->appendSubsequentLocalePart(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 222
    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->appendSubsequentLocalePart(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-object v0
.end method

.method private blacklist findBestMatchingLanguageCode(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
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

    .line 178
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->constructFullLocale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->LOCALE_NORMALIZATION_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 182
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-object v1

    .line 186
    :cond_19
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return-object v0

    .line 190
    :cond_20
    invoke-direct {p0, p3, p4}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->onlyOneOfScriptOrRegionIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 191
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6e

    goto :goto_6d

    .line 194
    :cond_2d
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_6e

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_6e

    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 197
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_51

    return-object p0

    .line 201
    :cond_51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 203
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_67

    return-object p0

    .line 207
    :cond_67
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6e

    :goto_6d
    return-object p2

    .line 211
    :cond_6e
    const-string p0, ""

    return-object p0
.end method

.method private blacklist onlyOneOfScriptOrRegionIsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_18

    .line 216
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method blacklist getFileName(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 157
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_9

    return-object v1

    .line 160
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_12

    return-object v1

    .line 164
    :cond_12
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 165
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_3f

    .line 166
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->findBestMatchingLanguageCode(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3f

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x5f

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3f
    return-object v1
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    if-eqz v1, :cond_d

    array-length v1, v1

    if-ge v1, v0, :cond_11

    .line 89
    :cond_d
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    .line 91
    :cond_11
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    if-nez v0, :cond_1c

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    :cond_1c
    const/4 v0, 0x0

    move v1, v0

    .line 94
    :goto_1e
    iget v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    if-ge v1, v2, :cond_48

    .line 95
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 96
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    .line 97
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, v0

    :goto_34
    if-ge v4, v2, :cond_40

    .line 99
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 101
    :cond_40
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_48
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

    .line 73
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    .line 74
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    .line 77
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 78
    iget-object v4, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    add-int/lit8 v5, v1, 0x1

    aput v3, v4, v1

    .line 79
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    new-instance v3, Ljava/util/HashSet;

    invoke-interface {p1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_1c

    :cond_44
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 129
    :goto_6
    iget v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    if-ge v1, v2, :cond_44

    .line 130
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x7c

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 133
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_3c
    const/16 v2, 0xa

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 139
    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v0, 0x0

    .line 110
    :goto_6
    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->numOfEntries:I

    if-ge v0, v1, :cond_37

    .line 111
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->countryCallingCodes:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/MappingFileProvider;->availableLanguages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 113
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    .line 114
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 115
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    goto :goto_24

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_37
    return-void
.end method
