.class final Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;
.super Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
.source "FlyweightMapStorage.java"


# static fields
.field private static final INT_NUM_BYTES:I = 0x4

.field private static final SHORT_NUM_BYTES:I = 0x2


# instance fields
.field private descIndexSizeInBytes:I

.field private descriptionIndexes:Ljava/nio/ByteBuffer;

.field private descriptionPool:[Ljava/lang/String;

.field private phoneNumberPrefixes:Ljava/nio/ByteBuffer;

.field private prefixSizeInBytes:I


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;-><init>()V

    #@3
    return-void
.end method

.method private createDescriptionPool(Ljava/util/SortedSet;Ljava/util/SortedMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 94
    .local p1, "descriptionsSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    .local p2, "phonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    #@3
    move-result v5

    #@4
    add-int/lit8 v5, v5, -0x1

    #@6
    invoke-static {v5}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->getOptimalNumberOfBytesForValue(I)I

    #@9
    move-result v5

    #@a
    iput v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    #@c
    .line 95
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    #@e
    iget v6, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    #@10
    mul-int/2addr v5, v6

    #@11
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@14
    move-result-object v5

    #@15
    iput-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    #@17
    .line 96
    invoke-interface {p1}, Ljava/util/SortedSet;->size()I

    #@1a
    move-result v5

    #@1b
    new-array v5, v5, [Ljava/lang/String;

    #@1d
    iput-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    #@1f
    .line 97
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    #@21
    invoke-interface {p1, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@24
    .line 100
    const/4 v2, 0x0

    #@25
    .line 101
    .local v2, "index":I
    const/4 v1, 0x0

    #@26
    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    #@28
    if-ge v1, v5, :cond_0

    #@2a
    .line 102
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    #@2c
    iget v6, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    #@2e
    invoke-static {v5, v6, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    #@31
    move-result v4

    #@32
    .line 103
    .local v4, "prefix":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v5

    #@36
    invoke-interface {p2, v5}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Ljava/lang/String;

    #@3c
    .line 104
    .local v0, "description":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    #@3e
    invoke-static {v5, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    #@41
    move-result v3

    #@42
    .line 105
    .local v3, "positionInDescriptionPool":I
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    #@44
    iget v6, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    #@46
    invoke-static {v5, v6, v2, v3}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->storeWordInBuffer(Ljava/nio/ByteBuffer;III)V

    #@49
    .line 106
    add-int/lit8 v2, v2, 0x1

    #@4b
    .line 101
    add-int/lit8 v1, v1, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 93
    .end local v0    # "description":Ljava/lang/String;
    .end local v3    # "positionInDescriptionPool":I
    .end local v4    # "prefix":I
    :cond_0
    return-void
.end method

.method private static getOptimalNumberOfBytesForValue(I)I
    .locals 1
    .param p0, "value"    # I

    #@0
    .prologue
    .line 186
    const/16 v0, 0x7fff

    #@2
    if-gt p0, v0, :cond_0

    #@4
    const/4 v0, 0x2

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x4

    #@7
    goto :goto_0
.end method

.method private readEntries(Ljava/io/ObjectInput;)V
    .locals 3
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@3
    move-result v1

    #@4
    iput v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    #@6
    .line 142
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    #@8
    if-eqz v1, :cond_0

    #@a
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    #@c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    #@f
    move-result v1

    #@10
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    #@12
    if-ge v1, v2, :cond_1

    #@14
    .line 143
    :cond_0
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    #@16
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    #@18
    mul-int/2addr v1, v2

    #@19
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    #@1f
    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    #@21
    if-eqz v1, :cond_2

    #@23
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    #@25
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    #@28
    move-result v1

    #@29
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    #@2b
    if-ge v1, v2, :cond_3

    #@2d
    .line 146
    :cond_2
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    #@2f
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    #@31
    mul-int/2addr v1, v2

    #@32
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@35
    move-result-object v1

    #@36
    iput-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    #@38
    .line 148
    :cond_3
    const/4 v0, 0x0

    #@39
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    #@3b
    if-ge v0, v1, :cond_4

    #@3d
    .line 149
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    #@3f
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    #@41
    invoke-static {p1, v1, v2, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    #@44
    .line 150
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    #@46
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    #@48
    invoke-static {p1, v1, v2, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V

    #@4b
    .line 148
    add-int/lit8 v0, v0, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 140
    :cond_4
    return-void
.end method

.method private static readExternalWord(Ljava/io/ObjectInput;ILjava/nio/ByteBuffer;I)V
    .locals 2
    .param p0, "objectInput"    # Ljava/io/ObjectInput;
    .param p1, "wordSize"    # I
    .param p2, "outputBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    mul-int v0, p3, p1

    #@2
    .line 202
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    #@3
    if-ne p1, v1, :cond_0

    #@5
    .line 203
    invoke-interface {p0}, Ljava/io/ObjectInput;->readShort()S

    #@8
    move-result v1

    #@9
    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@c
    .line 200
    :goto_0
    return-void

    #@d
    .line 205
    :cond_0
    invoke-interface {p0}, Ljava/io/ObjectInput;->readInt()I

    #@10
    move-result v1

    #@11
    invoke-virtual {p2, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    #@14
    goto :goto_0
.end method

.method private static readWordFromBuffer(Ljava/nio/ByteBuffer;II)I
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "wordSize"    # I
    .param p2, "index"    # I

    #@0
    .prologue
    .line 240
    mul-int v0, p2, p1

    #@2
    .line 241
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    #@3
    if-ne p1, v1, :cond_0

    #@5
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@8
    move-result v1

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@d
    move-result v1

    #@e
    goto :goto_0
.end method

.method private static storeWordInBuffer(Ljava/nio/ByteBuffer;III)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "wordSize"    # I
    .param p2, "index"    # I
    .param p3, "value"    # I

    #@0
    .prologue
    .line 256
    mul-int v0, p2, p1

    #@2
    .line 257
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    #@3
    if-ne p1, v1, :cond_0

    #@5
    .line 258
    int-to-short v1, p3

    #@6
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    #@9
    .line 255
    :goto_0
    return-void

    #@a
    .line 260
    :cond_0
    invoke-virtual {p0, v0, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    #@d
    goto :goto_0
.end method

.method private static writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V
    .locals 2
    .param p0, "objectOutput"    # Ljava/io/ObjectOutput;
    .param p1, "wordSize"    # I
    .param p2, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    mul-int v0, p3, p1

    #@2
    .line 222
    .local v0, "wordIndex":I
    const/4 v1, 0x2

    #@3
    if-ne p1, v1, :cond_0

    #@5
    .line 223
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    #@8
    move-result v1

    #@9
    invoke-interface {p0, v1}, Ljava/io/ObjectOutput;->writeShort(I)V

    #@c
    .line 220
    :goto_0
    return-void

    #@d
    .line 225
    :cond_0
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    #@10
    move-result v1

    #@11
    invoke-interface {p0, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@14
    goto :goto_0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    #@2
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    #@4
    invoke-static {v1, v2, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    #@7
    move-result v0

    #@8
    .line 66
    .local v0, "indexInDescriptionPool":I
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    #@a
    aget-object v1, v1, v0

    #@c
    return-object v1
.end method

.method public getPrefix(I)I
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    #@4
    invoke-static {v0, v1, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readWordFromBuffer(Ljava/nio/ByteBuffer;II)I

    #@7
    move-result v0

    #@8
    return v0
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
    .line 113
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@3
    move-result v4

    #@4
    iput v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    #@6
    .line 114
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@9
    move-result v4

    #@a
    iput v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    #@c
    .line 117
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@f
    move-result v3

    #@10
    .line 118
    .local v3, "sizeOfLengths":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    #@12
    invoke-virtual {v4}, Ljava/util/TreeSet;->clear()V

    #@15
    .line 119
    const/4 v2, 0x0

    #@16
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@18
    .line 120
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    #@1a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@1d
    move-result v5

    #@1e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@25
    .line 119
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 124
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@2b
    move-result v1

    #@2c
    .line 126
    .local v1, "descriptionPoolSize":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    #@2e
    if-eqz v4, :cond_1

    #@30
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    #@32
    array-length v4, v4

    #@33
    if-ge v4, v1, :cond_2

    #@35
    .line 127
    :cond_1
    new-array v4, v1, [Ljava/lang/String;

    #@37
    iput-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    #@39
    .line 129
    :cond_2
    const/4 v2, 0x0

    #@3a
    :goto_1
    if-ge v2, v1, :cond_3

    #@3c
    .line 130
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    .line 131
    .local v0, "description":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    #@42
    aput-object v0, v4, v2

    #@44
    .line 129
    add-int/lit8 v2, v2, 0x1

    #@46
    goto :goto_1

    #@47
    .line 133
    .end local v0    # "description":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->readEntries(Ljava/io/ObjectInput;)V

    #@4a
    .line 111
    return-void
.end method

.method public readFromSortedMap(Ljava/util/SortedMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 71
    .local p1, "phonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/TreeSet;

    #@2
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@5
    .line 72
    .local v0, "descriptionsSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    #@8
    move-result v5

    #@9
    iput v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    #@b
    .line 73
    invoke-interface {p1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    #@e
    move-result-object v5

    #@f
    check-cast v5, Ljava/lang/Integer;

    #@11
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@14
    move-result v5

    #@15
    invoke-static {v5}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->getOptimalNumberOfBytesForValue(I)I

    #@18
    move-result v5

    #@19
    iput v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    #@1b
    .line 74
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    #@1d
    iget v6, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    #@1f
    mul-int/2addr v5, v6

    #@20
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@23
    move-result-object v5

    #@24
    iput-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    #@26
    .line 78
    const/4 v3, 0x0

    #@27
    .line 79
    .local v3, "index":I
    invoke-interface {p1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    #@2a
    move-result-object v5

    #@2b
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v2

    #@2f
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_0

    #@35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v1

    #@39
    check-cast v1, Ljava/util/Map$Entry;

    #@3b
    .line 80
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3e
    move-result-object v5

    #@3f
    check-cast v5, Ljava/lang/Integer;

    #@41
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@44
    move-result v4

    #@45
    .line 81
    .local v4, "prefix":I
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    #@47
    iget v6, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    #@49
    invoke-static {v5, v6, v3, v4}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->storeWordInBuffer(Ljava/nio/ByteBuffer;III)V

    #@4c
    .line 82
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    #@4e
    int-to-double v6, v4

    #@4f
    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    #@52
    move-result-wide v6

    #@53
    double-to-int v6, v6

    #@54
    add-int/lit8 v6, v6, 0x1

    #@56
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v5, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@5d
    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@60
    move-result-object v5

    #@61
    check-cast v5, Ljava/lang/String;

    #@63
    invoke-interface {v0, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    #@66
    .line 84
    add-int/lit8 v3, v3, 0x1

    #@68
    goto :goto_0

    #@69
    .line 86
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v4    # "prefix":I
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->createDescriptionPool(Ljava/util/SortedSet;Ljava/util/SortedMap;)V

    #@6c
    .line 70
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 8
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    #@2
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@5
    .line 158
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    #@7
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@a
    .line 161
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    #@c
    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    #@f
    move-result v4

    #@10
    .line 162
    .local v4, "sizeOfLengths":I
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@13
    .line 163
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->possibleLengths:Ljava/util/TreeSet;

    #@15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v3

    #@19
    .local v3, "length$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_0

    #@1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/lang/Integer;

    #@25
    .line 164
    .local v2, "length":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@28
    move-result v5

    #@29
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@2c
    goto :goto_0

    #@2d
    .line 168
    .end local v2    # "length":Ljava/lang/Integer;
    :cond_0
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    #@2f
    array-length v5, v5

    #@30
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@33
    .line 170
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionPool:[Ljava/lang/String;

    #@35
    const/4 v5, 0x0

    #@36
    array-length v7, v6

    #@37
    :goto_1
    if-ge v5, v7, :cond_1

    #@39
    aget-object v0, v6, v5

    #@3b
    .line 171
    .local v0, "description":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@3e
    .line 170
    add-int/lit8 v5, v5, 0x1

    #@40
    goto :goto_1

    #@41
    .line 175
    .end local v0    # "description":Ljava/lang/String;
    :cond_1
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    #@43
    invoke-interface {p1, v5}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@46
    .line 176
    const/4 v1, 0x0

    #@47
    .local v1, "i":I
    :goto_2
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->numOfEntries:I

    #@49
    if-ge v1, v5, :cond_2

    #@4b
    .line 177
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->prefixSizeInBytes:I

    #@4d
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->phoneNumberPrefixes:Ljava/nio/ByteBuffer;

    #@4f
    invoke-static {p1, v5, v6, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    #@52
    .line 178
    iget v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descIndexSizeInBytes:I

    #@54
    iget-object v6, p0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->descriptionIndexes:Ljava/nio/ByteBuffer;

    #@56
    invoke-static {p1, v5, v6, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;->writeExternalWord(Ljava/io/ObjectOutput;ILjava/nio/ByteBuffer;I)V

    #@59
    .line 176
    add-int/lit8 v1, v1, 0x1

    #@5b
    goto :goto_2

    #@5c
    .line 155
    :cond_2
    return-void
.end method
