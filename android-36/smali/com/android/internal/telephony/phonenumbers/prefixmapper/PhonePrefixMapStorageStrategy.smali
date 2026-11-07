.class abstract Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    .line 34
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public abstract blacklist getDescription(I)Ljava/lang/String;
.end method

.method public blacklist getNumOfEntries()I
    .registers 1

    .line 85
    iget p0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    return p0
.end method

.method public blacklist getPossibleLengths()Ljava/util/TreeSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    return-object p0
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
    .registers 5

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getNumOfEntries()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_27

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|"

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 106
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist writeExternal(Ljava/io/ObjectOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
