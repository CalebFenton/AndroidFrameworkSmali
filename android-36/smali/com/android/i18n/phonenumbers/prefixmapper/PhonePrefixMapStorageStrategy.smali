.class abstract Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
.super Ljava/lang/Object;
.source "PhonePrefixMapStorageStrategy.java"


# instance fields
.field protected blacklist numOfEntries:I

.field protected final blacklist possibleLengths:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    .line 35
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public abstract blacklist getDescription(I)Ljava/lang/String;
.end method

.method public blacklist getNumOfEntries()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    return v0
.end method

.method public blacklist getPossibleLengths()Ljava/util/TreeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    return-object v0
.end method

.method public abstract blacklist getPrefix(I)I
.end method

.method public abstract blacklist readExternal(Ljava/io/ObjectInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist readFromSortedMap(Ljava/util/SortedMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "output":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getNumOfEntries()I

    move-result v1

    .line 101
    .local v1, "numOfEntries":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_2a

    .line 102
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 103
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 104
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getDescription(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 105
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 107
    .end local v2    # "i":I
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public abstract blacklist writeExternal(Ljava/io/ObjectOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
