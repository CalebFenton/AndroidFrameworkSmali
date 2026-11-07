.class Lcom/android/framework/protobuf/SmallSortedMap$1;
.super Lcom/android/framework/protobuf/SmallSortedMap;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/framework/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/android/framework/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/SmallSortedMap<",
        "TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "arraySize"    # I

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;-><init>(ILcom/android/framework/protobuf/SmallSortedMap$1;)V

    return-void
.end method


# virtual methods
.method public blacklist makeImmutable()V
    .registers 5

    .line 99
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap$1;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap$1;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/SmallSortedMap$1;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 102
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 103
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 104
    .local v2, "value":Ljava/util/List;
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v2    # "value":Ljava/util/List;
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 107
    .end local v0    # "i":I
    :cond_2d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap$1;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 109
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 110
    .restart local v2    # "value":Ljava/util/List;
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TFieldDescriptorType;Ljava/lang/Object;>;"
    .end local v2    # "value":Ljava/util/List;
    :cond_5a
    goto :goto_35

    .line 114
    :cond_5b
    invoke-super {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->makeImmutable()V

    .line 115
    return-void
.end method
