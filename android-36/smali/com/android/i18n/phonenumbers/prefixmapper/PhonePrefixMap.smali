.class public Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
.super Ljava/lang/Object;
.source "PhonePrefixMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private blacklist phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

.field private final blacklist phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 56
    return-void
.end method

.method private blacklist binarySearch(IIJ)I
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # J

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "current":I
    :goto_1
    if-gt p1, p2, :cond_1f

    .line 197
    add-int v1, p1, p2

    ushr-int/lit8 v0, v1, 0x1

    .line 198
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v1, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    move-result v1

    .line 199
    .local v1, "currentValue":I
    int-to-long v2, v1

    cmp-long v2, v2, p3

    if-nez v2, :cond_13

    .line 200
    return v0

    .line 201
    :cond_13
    int-to-long v2, v1

    cmp-long v2, v2, p3

    if-lez v2, :cond_1c

    .line 202
    add-int/lit8 v0, v0, -0x1

    .line 203
    move p2, v0

    goto :goto_1e

    .line 205
    :cond_1c
    add-int/lit8 p1, v0, 0x1

    .line 207
    .end local v1    # "currentValue":I
    :goto_1e
    goto :goto_1

    .line 208
    :cond_1f
    return v0
.end method

.method private blacklist createDefaultMapStorage()Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .registers 2

    .line 75
    new-instance v0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;-><init>()V

    return-object v0
.end method

.method private blacklist createFlyweightMapStorage()Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .registers 2

    .line 79
    new-instance v0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;-><init>()V

    return-object v0
.end method

.method private static blacklist getSizeOfPhonePrefixMapStorage(Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;Ljava/util/SortedMap;)I
    .registers 5
    .param p0, "mapStorage"    # Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    .local p1, "phonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->readFromSortedMap(Ljava/util/SortedMap;)V

    .line 65
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 67
    .local v1, "objectOutputStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 68
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 70
    .local v2, "sizeOfStorage":I
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 71
    return v2
.end method


# virtual methods
.method blacklist getPhonePrefixMapStorage()Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    return-object v0
.end method

.method blacklist getSmallerMapStorage(Ljava/util/SortedMap;)Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;"
        }
    .end annotation

    .line 90
    .local p1, "phonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->createFlyweightMapStorage()Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    move-result-object v0

    .line 91
    .local v0, "flyweightMapStorage":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    invoke-static {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->getSizeOfPhonePrefixMapStorage(Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;Ljava/util/SortedMap;)I

    move-result v1

    .line 94
    .local v1, "sizeOfFlyweightMapStorage":I
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->createDefaultMapStorage()Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    move-result-object v2

    .line 95
    .local v2, "defaultMapStorage":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    invoke-static {v2, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->getSizeOfPhonePrefixMapStorage(Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;Ljava/util/SortedMap;)I

    move-result v3
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_16

    .line 98
    .local v3, "sizeOfDefaultMapStorage":I
    if-ge v1, v3, :cond_14

    .line 99
    move-object v4, v0

    goto :goto_15

    :cond_14
    move-object v4, v2

    .line 98
    :goto_15
    return-object v4

    .line 100
    .end local v0    # "flyweightMapStorage":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .end local v1    # "sizeOfFlyweightMapStorage":I
    .end local v2    # "defaultMapStorage":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .end local v3    # "sizeOfDefaultMapStorage":I
    :catch_16
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->createFlyweightMapStorage()Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    move-result-object v1

    return-object v1
.end method

.method blacklist lookup(J)Ljava/lang/String;
    .registers 14
    .param p1, "number"    # J

    .line 150
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getNumOfEntries()I

    move-result v0

    .line 151
    .local v0, "numOfEntries":I
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 152
    return-object v1

    .line 154
    :cond_a
    move-wide v2, p1

    .line 155
    .local v2, "phonePrefix":J
    add-int/lit8 v4, v0, -0x1

    .line 156
    .local v4, "currentIndex":I
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPossibleLengths()Ljava/util/TreeSet;

    move-result-object v5

    .line 157
    .local v5, "currentSetOfLengths":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    :goto_13
    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v6

    if-lez v6, :cond_58

    .line 158
    invoke-interface {v5}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 159
    .local v6, "possibleLength":Ljava/lang/Integer;
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "phonePrefixStr":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x0

    if-le v8, v9, :cond_3a

    .line 161
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 163
    :cond_3a
    invoke-direct {p0, v10, v4, v2, v3}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->binarySearch(IIJ)I

    move-result v4

    .line 164
    if-gez v4, :cond_41

    .line 165
    return-object v1

    .line 167
    :cond_41
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v8, v4}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    move-result v8

    .line 168
    .local v8, "currentPrefix":I
    int-to-long v9, v8

    cmp-long v9, v2, v9

    if-nez v9, :cond_53

    .line 169
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v1, v4}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getDescription(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 171
    :cond_53
    invoke-interface {v5, v6}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v5

    .line 172
    .end local v6    # "possibleLength":Ljava/lang/Integer;
    .end local v7    # "phonePrefixStr":Ljava/lang/String;
    .end local v8    # "currentPrefix":I
    goto :goto_13

    .line 173
    :cond_58
    return-object v1
.end method

.method public blacklist lookup(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 185
    .local v0, "phonePrefix":J
    invoke-virtual {p0, v0, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 4
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    .line 124
    .local v0, "useFlyweightMapStorage":Z
    if-eqz v0, :cond_e

    .line 125
    new-instance v1, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;-><init>()V

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    goto :goto_15

    .line 127
    :cond_e
    new-instance v1, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;

    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;-><init>()V

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    .line 129
    :goto_15
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->readExternal(Ljava/io/ObjectInput;)V

    .line 130
    return-void
.end method

.method public blacklist readPhonePrefixMap(Ljava/util/SortedMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 115
    .local p1, "sortedPhonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->getSmallerMapStorage(Ljava/util/SortedMap;)Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    .line 116
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 216
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    instance-of v0, v0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 137
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 138
    return-void
.end method
