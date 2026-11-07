.class final Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;
.super Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
.source "FlyweightMapStorage.java"


# static fields
.field private static final blacklist INT_NUM_BYTES:I = 0x4

.field private static final blacklist SHORT_NUM_BYTES:I = 0x2


# instance fields
.field private blacklist descIndexSizeInBytes:I

.field private blacklist descriptionIndexes:Ljava/nio/ByteBuffer;

.field private blacklist descriptionPool:[Ljava/lang/String;

.field private blacklist phoneNumberPrefixes:Ljava/nio/ByteBuffer;

.field private blacklist prefixSizeInBytes:I


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;-><init>()V

    return-void
.end method

.method private blacklist createDescriptionPool(Ljava/util/SortedSet;Ljava/util/SortedMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 95
    .local p1, "descriptionsSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .local p2, "phonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->getOptimalNumberOfBytesForValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    .line 96
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    .line 97
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v1, v2, :cond_4f

    .line 103
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v2, v3, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 104
    .local v2, "prefix":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 105
    .local v3, "description":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 106
    .local v4, "positionInDescriptionPool":I
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-static {v5, v6, v0, v4}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->storeWordInBuffer(Ljava/nio/ByteBuffer;III)V

    .line 107
    nop

    .end local v2    # "prefix":I
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "positionInDescriptionPool":I
    add-int/lit8 v0, v0, 0x1

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 109
    .end local v1    # "i":I
    :cond_4f
    return-void
.end method

.method private static blacklist getOptimalNumberOfBytesForValue(I)I
    .registers 2
    .param p0, "value"    # I

    .line 187
    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_6

    const/4 v0, 0x2

    goto :goto_7

    :cond_6
    const/4 v0, 0x4

    :goto_7
    return v0
.end method

.method private blacklist readEntries(Ljava/io/ObjectInput;)V
    .registers 5
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    .line 143
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_1f

    .line 144
    :cond_14
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    .line 146
    :cond_1f
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_38

    .line 147
    :cond_2d
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    .line 149
    :cond_38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_4e

    .line 150
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    .line 151
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 153
    .end local v0    # "i":I
    :cond_4e
    return-void
.end method

.method private static blacklist readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V
    .registers 6
    .param p0, "objectInput"    # Ljava/io/ObjectInput;
    .param p1, "wordSize"    # I
    .param p2, "outputBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    mul-int v0, p3, p1

    .line 203
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    .line 204
    invoke-interface {p0}, Ljava/io/ObjectInput;->readShort()S

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    goto :goto_14

    .line 206
    :cond_d
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 208
    :goto_14
    return-void
.end method

.method private static blacklist readWordFromBuffer(Ljava/nio/ByteBuffer;II)I
    .registers 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "wordSize"    # I
    .param p2, "index"    # I

    .line 241
    mul-int v0, p2, p1

    .line 242
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    goto :goto_e

    :cond_a
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    :goto_e
    return v1
.end method

.method private static blacklist storeWordInBuffer(Ljava/nio/ByteBuffer;III)V
    .registers 6
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "wordSize"    # I
    .param p2, "index"    # I
    .param p3, "value"    # I

    .line 257
    mul-int v0, p2, p1

    .line 258
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    .line 259
    int-to-short v1, p3

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    goto :goto_d

    .line 261
    :cond_a
    invoke-virtual {p0, v0, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 263
    :goto_d
    return-void
.end method

.method private static blacklist writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V
    .registers 6
    .param p0, "objectOutput"    # Ljava/io/ObjectOutput;
    .param p1, "wordSize"    # I
    .param p2, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    mul-int v0, p3, p1

    .line 223
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    .line 224
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    invoke-interface {p0, v1}, Ljava/io/ObjectOutput;->writeShort(I)V

    goto :goto_14

    .line 226
    :cond_d
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    invoke-interface {p0, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 228
    :goto_14
    return-void
.end method


# virtual methods
.method public blacklist getDescription(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I

    .line 65
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    .line 66
    invoke-static {v0, v1, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 67
    .local v0, "indexInDescriptionPool":I
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public blacklist getPrefix(I)I
    .registers 4
    .param p1, "index"    # I

    .line 56
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v0, v1, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method public blacklist readExternal(Ljava/io/ObjectInput;)V
    .registers 7
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    .line 115
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    .line 118
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 119
    .local v0, "sizeOfLengths":I
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_28

    .line 121
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 125
    .end local v1    # "i":I
    :cond_28
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 127
    .local v1, "descriptionPoolSize":I
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v2, v2

    if-ge v2, v1, :cond_39

    .line 128
    :cond_35
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    .line 130
    :cond_39
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3a
    if-ge v2, v1, :cond_47

    .line 131
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "description":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    aput-object v3, v4, v2

    .line 130
    .end local v3    # "description":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 134
    .end local v2    # "i":I
    :cond_47
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readEntries(Ljava/io/ObjectInput;)V

    .line 135
    return-void
.end method

.method public blacklist readFromSortedMap(Ljava/util/SortedMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p1, "phonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 73
    .local v0, "descriptionsSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v1

    iput v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    .line 74
    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->getOptimalNumberOfBytesForValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    .line 75
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 81
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 82
    .local v4, "prefix":I
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v5, v6, v1, v4}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->storeWordInBuffer(Ljava/nio/ByteBuffer;III)V

    .line 83
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 85
    nop

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "prefix":I
    add-int/lit8 v1, v1, 0x1

    .line 86
    goto :goto_2f

    .line 87
    :cond_6a
    invoke-direct {p0, v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->createDescriptionPool(Ljava/util/SortedSet;Ljava/util/SortedMap;)V

    .line 88
    return-void
.end method

.method public blacklist writeExternal(Ljava/io/ObjectOutput;)V
    .registers 7
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 162
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    .line 163
    .local v0, "sizeOfLengths":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 164
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 165
    .local v2, "length":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 166
    .end local v2    # "length":Ljava/lang/Integer;
    goto :goto_19

    .line 169
    :cond_2d
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 171
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_37
    if-ge v3, v2, :cond_41

    aget-object v4, v1, v3

    .line 172
    .local v4, "description":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 171
    .end local v4    # "description":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 176
    :cond_41
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_47
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    if-ge v1, v2, :cond_5c

    .line 178
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2, v3, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    .line 179
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2, v3, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 181
    .end local v1    # "i":I
    :cond_5c
    return-void
.end method
