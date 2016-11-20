.class public Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;
.super Ljava/lang/Object;
.source "PhonePrefixMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

.field private final phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    const-class v0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->LOGGER:Ljava/util/logging/Logger;

    #@c
    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 39
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@9
    .line 54
    return-void
.end method

.method private binarySearch(IIJ)I
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # J

    #@0
    .prologue
    .line 193
    const/4 v0, 0x0

    #@1
    .line 194
    .local v0, "current":I
    :goto_0
    if-gt p1, p2, :cond_2

    #@3
    .line 195
    add-int v2, p1, p2

    #@5
    ushr-int/lit8 v0, v2, 0x1

    #@7
    .line 196
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@9
    invoke-virtual {v2, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    #@c
    move-result v1

    #@d
    .line 197
    .local v1, "currentValue":I
    int-to-long v2, v1

    #@e
    cmp-long v2, v2, p3

    #@10
    if-nez v2, :cond_0

    #@12
    .line 198
    return v0

    #@13
    .line 199
    :cond_0
    int-to-long v2, v1

    #@14
    cmp-long v2, v2, p3

    #@16
    if-lez v2, :cond_1

    #@18
    .line 200
    add-int/lit8 v0, v0, -0x1

    #@1a
    .line 201
    move p2, v0

    #@1b
    goto :goto_0

    #@1c
    .line 203
    :cond_1
    add-int/lit8 p1, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 206
    .end local v1    # "currentValue":I
    :cond_2
    return v0
.end method

.method private createDefaultMapStorage()Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .locals 1

    #@0
    .prologue
    .line 73
    new-instance v0, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;

    #@2
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;-><init>()V

    #@5
    return-object v0
.end method

.method private createFlyweightMapStorage()Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .locals 1

    #@0
    .prologue
    .line 77
    new-instance v0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    #@2
    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;-><init>()V

    #@5
    return-object v0
.end method

.method private static getSizeOfPhonePrefixMapStorage(Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;Ljava/util/SortedMap;)I
    .locals 3
    .param p0, "mapStorage"    # Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;",
            "Ljava/util/SortedMap",
            "<",
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

    #@0
    .prologue
    .line 62
    .local p1, "phonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->readFromSortedMap(Ljava/util/SortedMap;)V

    #@3
    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@5
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@8
    .line 64
    .local v0, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    #@a
    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@d
    .line 65
    .local v1, "objectOutputStream":Ljava/io/ObjectOutputStream;
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    #@10
    .line 66
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    #@13
    .line 67
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@16
    move-result v2

    #@17
    .line 68
    .local v2, "sizeOfStorage":I
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    #@1a
    .line 69
    return v2
.end method


# virtual methods
.method getPhonePrefixMapStorage()Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@2
    return-object v0
.end method

.method getSmallerMapStorage(Ljava/util/SortedMap;)Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;"
        }
    .end annotation

    #@0
    .prologue
    .line 88
    .local p1, "phonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->createFlyweightMapStorage()Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@3
    move-result-object v2

    #@4
    .line 89
    .local v2, "flyweightMapStorage":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    invoke-static {v2, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->getSizeOfPhonePrefixMapStorage(Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;Ljava/util/SortedMap;)I

    #@7
    move-result v4

    #@8
    .line 92
    .local v4, "sizeOfFlyweightMapStorage":I
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->createDefaultMapStorage()Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@b
    move-result-object v0

    #@c
    .line 93
    .local v0, "defaultMapStorage":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    invoke-static {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->getSizeOfPhonePrefixMapStorage(Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;Ljava/util/SortedMap;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v3

    #@10
    .line 96
    .local v3, "sizeOfDefaultMapStorage":I
    if-ge v4, v3, :cond_0

    #@12
    .end local v2    # "flyweightMapStorage":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    :goto_0
    return-object v2

    #@13
    .restart local v2    # "flyweightMapStorage":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    :cond_0
    move-object v2, v0

    #@14
    .line 97
    goto :goto_0

    #@15
    .line 98
    .end local v0    # "defaultMapStorage":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .end local v2    # "flyweightMapStorage":Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
    .end local v3    # "sizeOfDefaultMapStorage":I
    .end local v4    # "sizeOfFlyweightMapStorage":I
    :catch_0
    move-exception v1

    #@16
    .line 99
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->LOGGER:Ljava/util/logging/Logger;

    #@18
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    #@1f
    .line 100
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->createFlyweightMapStorage()Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@22
    move-result-object v5

    #@23
    return-object v5
.end method

.method lookup(J)Ljava/lang/String;
    .locals 13
    .param p1, "number"    # J

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v10, 0x0

    #@2
    .line 148
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@4
    invoke-virtual {v8}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getNumOfEntries()I

    #@7
    move-result v3

    #@8
    .line 149
    .local v3, "numOfEntries":I
    if-nez v3, :cond_0

    #@a
    .line 150
    return-object v11

    #@b
    .line 152
    :cond_0
    move-wide v4, p1

    #@c
    .line 153
    .local v4, "phonePrefix":J
    add-int/lit8 v0, v3, -0x1

    #@e
    .line 154
    .local v0, "currentIndex":I
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@10
    invoke-virtual {v8}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPossibleLengths()Ljava/util/TreeSet;

    #@13
    move-result-object v2

    #@14
    .line 155
    .local v2, "currentSetOfLengths":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/SortedSet;->size()I

    #@17
    move-result v8

    #@18
    if-lez v8, :cond_4

    #@1a
    .line 156
    invoke-interface {v2}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    #@1d
    move-result-object v7

    #@1e
    check-cast v7, Ljava/lang/Integer;

    #@20
    .line 157
    .local v7, "possibleLength":Ljava/lang/Integer;
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@23
    move-result-object v6

    #@24
    .line 158
    .local v6, "phonePrefixStr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@27
    move-result v8

    #@28
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@2b
    move-result v9

    #@2c
    if-le v8, v9, :cond_1

    #@2e
    .line 159
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@31
    move-result v8

    #@32
    invoke-virtual {v6, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@35
    move-result-object v8

    #@36
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@39
    move-result-wide v4

    #@3a
    .line 161
    :cond_1
    invoke-direct {p0, v10, v0, v4, v5}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->binarySearch(IIJ)I

    #@3d
    move-result v0

    #@3e
    .line 162
    if-gez v0, :cond_2

    #@40
    .line 163
    return-object v11

    #@41
    .line 165
    :cond_2
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@43
    invoke-virtual {v8, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    #@46
    move-result v1

    #@47
    .line 166
    .local v1, "currentPrefix":I
    int-to-long v8, v1

    #@48
    cmp-long v8, v4, v8

    #@4a
    if-nez v8, :cond_3

    #@4c
    .line 167
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@4e
    invoke-virtual {v8, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getDescription(I)Ljava/lang/String;

    #@51
    move-result-object v8

    #@52
    return-object v8

    #@53
    .line 169
    :cond_3
    invoke-interface {v2, v7}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    #@56
    move-result-object v2

    #@57
    goto :goto_0

    #@58
    .line 171
    .end local v1    # "currentPrefix":I
    .end local v6    # "phonePrefixStr":Ljava/lang/String;
    .end local v7    # "possibleLength":Ljava/lang/Integer;
    :cond_4
    return-object v11
.end method

.method public lookup(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    #@0
    .prologue
    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    #@8
    move-result v3

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    #@f
    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1e
    move-result-wide v0

    #@1f
    .line 183
    .local v0, "phonePrefix":J
    invoke-virtual {p0, v0, v1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->lookup(J)Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    return-object v2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    #@3
    move-result v0

    #@4
    .line 122
    .local v0, "useFlyweightMapStorage":Z
    if-eqz v0, :cond_0

    #@6
    .line 123
    new-instance v1, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    #@8
    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;-><init>()V

    #@b
    iput-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@d
    .line 127
    :goto_0
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@f
    invoke-virtual {v1, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->readExternal(Ljava/io/ObjectInput;)V

    #@12
    .line 119
    return-void

    #@13
    .line 125
    :cond_0
    new-instance v1, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;

    #@15
    invoke-direct {v1}, Lcom/android/i18n/phonenumbers/prefixmapper/DefaultMapStorage;-><init>()V

    #@18
    iput-object v1, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@1a
    goto :goto_0
.end method

.method public readPhonePrefixMap(Ljava/util/SortedMap;)V
    .locals 1
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
    .line 113
    .local p1, "sortedPhonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->getSmallerMapStorage(Ljava/util/SortedMap;)Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@6
    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@2
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@2
    instance-of v0, v0, Lcom/android/i18n/phonenumbers/prefixmapper/FlyweightMapStorage;

    #@4
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    #@7
    .line 135
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMap;->phonePrefixMapStorage:Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;

    #@9
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->writeExternal(Ljava/io/ObjectOutput;)V

    #@c
    .line 133
    return-void
.end method
