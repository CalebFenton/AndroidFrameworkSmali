.class Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;
.super Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
.source "DefaultMapStorage.java"


# instance fields
.field private blacklist descriptions:[Ljava/lang/String;

.field private blacklist phoneNumberPrefixes:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDescription(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 46
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getPrefix(I)I
    .registers 3
    .param p1, "index"    # I

    .line 41
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v0, v0, p1

    return v0
.end method

.method public blacklist readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    .line 65
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    array-length v0, v0

    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_17

    .line 66
    :cond_11
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    .line 68
    :cond_17
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_28

    .line 69
    :cond_22
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    .line 71
    :cond_28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_40

    .line 72
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    aput v2, v1, v0

    .line 73
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 75
    .end local v0    # "i":I
    :cond_40
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 76
    .local v0, "sizeOfLengths":I
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 77
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4a
    if-ge v1, v0, :cond_5c

    .line 78
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 80
    .end local v1    # "i":I
    :cond_5c
    return-void
.end method

.method public blacklist readFromSortedMap(Ljava/util/SortedMap;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "sortedPhonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v0

    iput v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    .line 52
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    .line 53
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "index":I
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 56
    .local v2, "prefix":I
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    aput v2, v3, v0

    .line 57
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    double-to-int v3, v5

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v2    # "prefix":I
    move v0, v4

    goto :goto_1b

    .line 59
    .end local v4    # "index":I
    .restart local v0    # "index":I
    :cond_44
    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public blacklist writeExternal(Ljava/io/ObjectOutput;)V
    .registers 6
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_1b

    .line 86
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 87
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 89
    .end local v0    # "i":I
    :cond_1b
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    .line 90
    .local v0, "sizeOfLengths":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 91
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 92
    .local v2, "length":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 93
    .end local v2    # "length":Ljava/lang/Integer;
    goto :goto_2a

    .line 94
    :cond_3e
    return-void
.end method
