.class Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;
.super Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
.source "DefaultMapStorage.java"


# instance fields
.field private descriptions:[Ljava/lang/String;

.field private phoneNumberPrefixes:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getPrefix(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 63
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@3
    move-result v2

    #@4
    iput v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    #@6
    .line 64
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    #@c
    array-length v2, v2

    #@d
    iget v3, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    #@f
    if-ge v2, v3, :cond_1

    #@11
    .line 65
    :cond_0
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    #@13
    new-array v2, v2, [I

    #@15
    iput-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    #@17
    .line 67
    :cond_1
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    #@19
    if-eqz v2, :cond_2

    #@1b
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    #@1d
    array-length v2, v2

    #@1e
    iget v3, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    #@20
    if-ge v2, v3, :cond_3

    #@22
    .line 68
    :cond_2
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    #@24
    new-array v2, v2, [Ljava/lang/String;

    #@26
    iput-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    #@28
    .line 70
    :cond_3
    const/4 v0, 0x0

    #@29
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    #@2b
    if-ge v0, v2, :cond_4

    #@2d
    .line 71
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    #@2f
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@32
    move-result v3

    #@33
    aput v3, v2, v0

    #@35
    .line 72
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    #@37
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    aput-object v3, v2, v0

    #@3d
    .line 70
    add-int/lit8 v0, v0, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 74
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@43
    move-result v1

    #@44
    .line 75
    .local v1, "sizeOfLengths":I
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    #@46
    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    #@49
    .line 76
    const/4 v0, 0x0

    #@4a
    :goto_1
    if-ge v0, v1, :cond_5

    #@4c
    .line 77
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    #@4e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    #@51
    move-result v3

    #@52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@59
    .line 76
    add-int/lit8 v0, v0, 0x1

    #@5b
    goto :goto_1

    #@5c
    .line 62
    :cond_5
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
    .line 50
    .local p1, "sortedPhonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    #@3
    move-result v4

    #@4
    iput v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    #@6
    .line 51
    iget v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    #@8
    new-array v4, v4, [I

    #@a
    iput-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    #@c
    .line 52
    iget v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    #@e
    new-array v4, v4, [Ljava/lang/String;

    #@10
    iput-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    #@12
    .line 53
    const/4 v0, 0x0

    #@13
    .line 54
    .local v0, "index":I
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    #@16
    move-result-object v4

    #@17
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v3

    #@1b
    .local v3, "prefix$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v4

    #@1f
    if-eqz v4, :cond_0

    #@21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v4

    #@25
    check-cast v4, Ljava/lang/Integer;

    #@27
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@2a
    move-result v2

    #@2b
    .line 55
    .local v2, "prefix":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    #@2d
    add-int/lit8 v1, v0, 0x1

    #@2f
    .end local v0    # "index":I
    .local v1, "index":I
    aput v2, v4, v0

    #@31
    .line 56
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    #@33
    int-to-double v6, v2

    #@34
    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    #@37
    move-result-wide v6

    #@38
    double-to-int v5, v6

    #@39
    add-int/lit8 v5, v5, 0x1

    #@3b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3e
    move-result-object v5

    #@3f
    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    #@42
    move v0, v1

    #@43
    .end local v1    # "index":I
    .restart local v0    # "index":I
    goto :goto_0

    #@44
    .line 58
    .end local v2    # "prefix":I
    :cond_0
    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    #@47
    move-result-object v4

    #@48
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    #@4a
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4d
    .line 49
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    iget v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    #@2
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@5
    .line 84
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    #@8
    if-ge v0, v4, :cond_0

    #@a
    .line 85
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    #@c
    aget v4, v4, v0

    #@e
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@11
    .line 86
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    #@13
    aget-object v4, v4, v0

    #@15
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    #@18
    .line 84
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 88
    :cond_0
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    #@1d
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    #@20
    move-result v3

    #@21
    .line 89
    .local v3, "sizeOfLengths":I
    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@24
    .line 90
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    #@26
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v2

    #@2a
    .local v2, "length$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_1

    #@30
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, Ljava/lang/Integer;

    #@36
    .line 91
    .local v1, "length":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@39
    move-result v4

    #@3a
    invoke-interface {p1, v4}, Ljava/io/ObjectOutput;->writeInt(I)V

    #@3d
    goto :goto_1

    #@3e
    .line 82
    .end local v1    # "length":Ljava/lang/Integer;
    :cond_1
    return-void
.end method
