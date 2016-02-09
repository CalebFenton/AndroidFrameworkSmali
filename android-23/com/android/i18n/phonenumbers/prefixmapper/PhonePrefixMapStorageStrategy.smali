.class abstract Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
.super Ljava/lang/Object;
.source "PhonePrefixMapStorageStrategy.java"


# instance fields
.field protected numOfEntries:I

.field protected final possibleLengths:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    #@6
    .line 34
    new-instance v0, Ljava/util/TreeSet;

    #@8
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    #@d
    .line 32
    return-void
.end method


# virtual methods
.method public abstract getDescription(I)Ljava/lang/String;
.end method

.method public getNumOfEntries()I
    .locals 1

    #@0
    .prologue
    .line 85
    iget v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->numOfEntries:I

    #@2
    return v0
.end method

.method public getPossibleLengths()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->possibleLengths:Ljava/util/TreeSet;

    #@2
    return-object v0
.end method

.method public abstract getPrefix(I)I
.end method

.method public abstract readExternal(Ljava/io/ObjectInput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readFromSortedMap(Ljava/util/SortedMap;)V
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
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 98
    .local v2, "output":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getNumOfEntries()I

    #@8
    move-result v1

    #@9
    .line 100
    .local v1, "numOfEntries":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 101
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getPrefix(I)I

    #@f
    move-result v3

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    .line 102
    const-string/jumbo v4, "|"

    #@17
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    .line 103
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;->getDescription(I)Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v3

    #@23
    .line 104
    const-string/jumbo v4, "\n"

    #@26
    .line 101
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 100
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 106
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    return-object v3
.end method

.method public abstract writeExternal(Ljava/io/ObjectOutput;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
