.class Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;
.super Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
.source "DefaultMapStorage.java"


# instance fields
.field private blacklist descriptions:[Ljava/lang/String;

.field private blacklist phoneNumberPrefixes:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDescription(I)Ljava/lang/String;
    .registers 2

    .line 45
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public blacklist getPrefix(I)I
    .registers 2

    .line 40
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget p0, p0, p1

    return p0
.end method

.method public blacklist readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    .line 64
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    if-eqz v1, :cond_d

    array-length v1, v1

    if-ge v1, v0, :cond_11

    .line 65
    :cond_d
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    .line 67
    :cond_11
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    if-eqz v1, :cond_18

    array-length v1, v1

    if-ge v1, v0, :cond_1c

    .line 68
    :cond_18
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    :cond_1c
    const/4 v0, 0x0

    move v1, v0

    .line 70
    :goto_1e
    iget v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    if-ge v1, v2, :cond_35

    .line 71
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 72
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 74
    :cond_35
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 75
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->clear()V

    :goto_3e
    if-ge v0, v1, :cond_50

    .line 77
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_50
    return-void
.end method

.method public blacklist readFromSortedMap(Ljava/util/SortedMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    .line 51
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    .line 52
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    .line 54
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 55
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    add-int/lit8 v4, v1, 0x1

    aput v2, v3, v1

    .line 56
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_17

    .line 58
    :cond_40
    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method public blacklist writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v0, 0x0

    .line 84
    :goto_6
    iget v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    if-ge v0, v1, :cond_1b

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 86
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 88
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    .line 89
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 90
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    goto :goto_2a

    :cond_3e
    return-void
.end method
