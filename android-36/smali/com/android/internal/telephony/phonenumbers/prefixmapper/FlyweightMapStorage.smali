.class final Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;
.super Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
.source "FlyweightMapStorage.java"


# instance fields
.field private blacklist descIndexSizeInBytes:I

.field private blacklist descriptionIndexes:Ljava/nio/ByteBuffer;

.field private blacklist descriptionPool:[Ljava/lang/String;

.field private blacklist phoneNumberPrefixes:Ljava/nio/ByteBuffer;

.field private blacklist prefixSizeInBytes:I


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;-><init>()V

    return-void
.end method

.method private blacklist createDescriptionPool(Ljava/util/SortedSet;Ljava/util/SortedMap;)V
    .registers 7
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

    .line 94
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->getOptimalNumberOfBytesForValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    .line 95
    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    mul-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    .line 96
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    .line 97
    invoke-interface {p1, v0}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 p1, 0x0

    move v0, p1

    .line 101
    :goto_22
    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    if-ge p1, v1, :cond_4a

    .line 102
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result v1

    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 105
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->storeWordInBuffer(Ljava/nio/ByteBuffer;III)V

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    :cond_4a
    return-void
.end method

.method private static blacklist getOptimalNumberOfBytesForValue(I)I
    .registers 2

    .line 0
    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    const/4 p0, 0x4

    return p0
.end method

.method private blacklist readEntries(Ljava/io/ObjectInput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    if-ge v0, v1, :cond_1d

    .line 143
    :cond_12
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    .line 145
    :cond_1d
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    if-ge v0, v1, :cond_34

    .line 146
    :cond_29
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    :cond_34
    const/4 v0, 0x0

    .line 148
    :goto_35
    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    if-ge v0, v1, :cond_4a

    .line 149
    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    .line 150
    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_4a
    return-void
.end method

.method private static blacklist readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/2addr p3, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 203
    invoke-interface {p0}, Ljava/io/ObjectInput;->readShort()S

    move-result p0

    invoke-virtual {p2, p3, p0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void

    .line 205
    :cond_c
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    move-result p0

    invoke-virtual {p2, p3, p0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static blacklist readWordFromBuffer(Ljava/nio/ByteBuffer;II)I
    .registers 4

    mul-int/2addr p2, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    .line 241
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    return p0

    :cond_9
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    return p0
.end method

.method private static blacklist storeWordInBuffer(Ljava/nio/ByteBuffer;III)V
    .registers 5

    mul-int/2addr p2, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    int-to-short p1, p3

    .line 258
    invoke-virtual {p0, p2, p1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    return-void

    .line 260
    :cond_9
    invoke-virtual {p0, p2, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static blacklist writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int/2addr p3, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 223
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    invoke-interface {p0, p1}, Ljava/io/ObjectOutput;->writeShort(I)V

    return-void

    .line 225
    :cond_c
    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/io/ObjectOutput;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public blacklist getDescription(I)Ljava/lang/String;
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    .line 65
    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result p1

    .line 66
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public blacklist getPrefix(I)I
    .registers 3

    .line 55
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public blacklist readExternal(Ljava/io/ObjectInput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    .line 114
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    .line 117
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_17
    if-ge v2, v0, :cond_29

    .line 120
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 124
    :cond_29
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 126
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    if-eqz v2, :cond_34

    array-length v2, v2

    if-ge v2, v0, :cond_38

    .line 127
    :cond_34
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    :cond_38
    :goto_38
    if-ge v1, v0, :cond_45

    .line 130
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 131
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 133
    :cond_45
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->readEntries(Ljava/io/ObjectInput;)V

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

    .line 71
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 72
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    .line 73
    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->getOptimalNumberOfBytesForValue(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    .line 74
    iget v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    mul-int/2addr v2, v1

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    .line 79
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 81
    iget-object v5, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-static {v5, v6, v2, v4}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->storeWordInBuffer(Ljava/nio/ByteBuffer;III)V

    .line 82
    iget-object v5, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-int v4, v6

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 86
    :cond_67
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->createDescriptionPool(Ljava/util/SortedSet;Ljava/util/SortedMap;)V

    return-void
.end method

.method public blacklist writeExternal(Ljava/io/ObjectOutput;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    .line 162
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 164
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_19

    .line 168
    :cond_2d
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_38
    if-ge v3, v1, :cond_42

    aget-object v4, v0, v3

    .line 171
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 175
    :cond_42
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 176
    :goto_47
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    if-ge v2, v0, :cond_5c

    .line 177
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    .line 178
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_5c
    return-void
.end method
