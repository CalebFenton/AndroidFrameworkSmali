.class final Lcom/android/framework/protobuf/FieldSet;
.super Ljava/lang/Object;
.source "FieldSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/FieldSet$Builder;,
        Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_FIELD_MAP_ARRAY_SIZE:I = 0x10

.field private static final blacklist DEFAULT_INSTANCE:Lcom/android/framework/protobuf/FieldSet;


# instance fields
.field private final blacklist fields:Lcom/android/framework/protobuf/SmallSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist hasLazyField:Z

.field private blacklist isImmutable:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 115
    new-instance v0, Lcom/android/framework/protobuf/FieldSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/FieldSet;-><init>(Z)V

    sput-object v0, Lcom/android/framework/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/android/framework/protobuf/FieldSet;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 82
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    .line 84
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/framework/protobuf/SmallSortedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "fields":Lcom/android/framework/protobuf/SmallSortedMap;, "Lcom/android/framework/protobuf/SmallSortedMap<TT;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    .line 95
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldSet;->makeImmutable()V

    .line 96
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/SmallSortedMap;Lcom/android/framework/protobuf/FieldSet$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/framework/protobuf/SmallSortedMap;
    .param p2, "x1"    # Lcom/android/framework/protobuf/FieldSet$1;

    .line 52
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FieldSet;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;)V

    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "dummy"    # Z

    .line 89
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/FieldSet;-><init>(Lcom/android/framework/protobuf/SmallSortedMap;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldSet;->makeImmutable()V

    .line 91
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;
    .registers 3
    .param p0, "x0"    # Lcom/android/framework/protobuf/SmallSortedMap;
    .param p1, "x1"    # Z

    .line 52
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/FieldSet;->cloneAllFieldsMap(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/android/framework/protobuf/FieldSet;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/framework/protobuf/FieldSet;

    .line 52
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    return v0
.end method

.method static synthetic blacklist access$302(Lcom/android/framework/protobuf/FieldSet;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/framework/protobuf/FieldSet;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    return p1
.end method

.method static synthetic blacklist access$400(Lcom/android/framework/protobuf/FieldSet;)Lcom/android/framework/protobuf/SmallSortedMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/framework/protobuf/FieldSet;

    .line 52
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 52
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/FieldSet;->isValidType(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$600(Ljava/util/Map$Entry;)Z
    .registers 2
    .param p0, "x0"    # Ljava/util/Map$Entry;

    .line 52
    invoke-static {p0}, Lcom/android/framework/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$700(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Ljava/lang/Object;

    .line 52
    invoke-static {p0}, Lcom/android/framework/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist cloneAllFieldsMap(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;
    .registers 5
    .param p1, "copyList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/android/framework/protobuf/SmallSortedMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 211
    .local p0, "fields":Lcom/android/framework/protobuf/SmallSortedMap;, "Lcom/android/framework/protobuf/SmallSortedMap<TT;Ljava/lang/Object;>;"
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->newFieldMap(I)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    .line 212
    .local v0, "result":Lcom/android/framework/protobuf/SmallSortedMap;, "Lcom/android/framework/protobuf/SmallSortedMap<TT;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 213
    invoke-virtual {p0, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/android/framework/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 215
    .end local v1    # "i":I
    :cond_17
    invoke-virtual {p0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 216
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-static {v0, v2, p1}, Lcom/android/framework/protobuf/FieldSet;->cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    .line 217
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_1f

    .line 218
    :cond_2f
    return-object v0
.end method

.method private static blacklist cloneFieldEntry(Ljava/util/Map;Ljava/util/Map$Entry;Z)V
    .registers 7
    .param p2, "copyList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 223
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TT;Ljava/lang/Object;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 224
    .local v0, "key":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 225
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v2, :cond_19

    .line 226
    move-object v2, v1

    check-cast v2, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 227
    :cond_19
    if-eqz p2, :cond_2b

    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2b

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 230
    :cond_2b
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :goto_2e
    return-void
.end method

.method private static blacklist cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "value"    # Ljava/lang/Object;

    .line 513
    instance-of v0, p0, [B

    if-eqz v0, :cond_10

    .line 514
    move-object v0, p0

    check-cast v0, [B

    .line 515
    .local v0, "bytes":[B
    array-length v1, v0

    new-array v1, v1, [B

    .line 516
    .local v1, "copy":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    return-object v1

    .line 519
    .end local v0    # "bytes":[B
    .end local v1    # "copy":[B
    :cond_10
    return-object p0
.end method

.method static blacklist computeElementSize(Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .registers 5
    .param p0, "type"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p1, "number"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 813
    invoke-static {p1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v0

    .line 814
    .local v0, "tagSize":I
    sget-object v1, Lcom/android/framework/protobuf/WireFormat$FieldType;->GROUP:Lcom/android/framework/protobuf/WireFormat$FieldType;

    if-ne p0, v1, :cond_a

    .line 817
    mul-int/lit8 v0, v0, 0x2

    .line 819
    :cond_a
    invoke-static {p0, p2}, Lcom/android/framework/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method static blacklist computeElementSizeNoTag(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .registers 4
    .param p0, "type"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p1, "value"    # Ljava/lang/Object;

    .line 831
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_110

    .line 888
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :pswitch_13
    instance-of v0, p1, Lcom/android/framework/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_23

    .line 882
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    return v0

    .line 884
    :cond_23
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v0

    return v0

    .line 871
    :pswitch_2f
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v0

    return v0

    .line 869
    :pswitch_3b
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 867
    :pswitch_47
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed64SizeNoTag(J)I

    move-result v0

    return v0

    .line 865
    :pswitch_53
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeSFixed32SizeNoTag(I)I

    move-result v0

    return v0

    .line 863
    :pswitch_5f
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 851
    :pswitch_6b
    instance-of v0, p1, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_77

    .line 852
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result v0

    return v0

    .line 854
    :cond_77
    move-object v0, p1

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeByteArraySizeNoTag([B)I

    move-result v0

    return v0

    .line 857
    :pswitch_7f
    instance-of v0, p1, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_8b

    .line 858
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/android/framework/protobuf/ByteString;)I

    move-result v0

    return v0

    .line 860
    :cond_8b
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 874
    :pswitch_93
    instance-of v0, p1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v0, :cond_9f

    .line 875
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyField;

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldSizeNoTag(Lcom/android/framework/protobuf/LazyFieldLite;)I

    move-result v0

    return v0

    .line 877
    :cond_9f
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I

    move-result v0

    return v0

    .line 849
    :pswitch_a7
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeGroupSizeNoTag(Lcom/android/framework/protobuf/MessageLite;)I

    move-result v0

    return v0

    .line 847
    :pswitch_af
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeBoolSizeNoTag(Z)I

    move-result v0

    return v0

    .line 845
    :pswitch_bb
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed32SizeNoTag(I)I

    move-result v0

    return v0

    .line 843
    :pswitch_c7
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFixed64SizeNoTag(J)I

    move-result v0

    return v0

    .line 841
    :pswitch_d3
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v0

    return v0

    .line 839
    :pswitch_df
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v0

    return v0

    .line 837
    :pswitch_eb
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v0

    return v0

    .line 835
    :pswitch_f7
    move-object v0, p1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/CodedOutputStream;->computeFloatSizeNoTag(F)I

    move-result v0

    return v0

    .line 833
    :pswitch_103
    move-object v0, p1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeDoubleSizeNoTag(D)I

    move-result v0

    return v0

    nop

    :pswitch_data_110
    .packed-switch 0x1
        :pswitch_103
        :pswitch_f7
        :pswitch_eb
        :pswitch_df
        :pswitch_d3
        :pswitch_c7
        :pswitch_bb
        :pswitch_af
        :pswitch_a7
        :pswitch_93
        :pswitch_7f
        :pswitch_6b
        :pswitch_5f
        :pswitch_53
        :pswitch_47
        :pswitch_3b
        :pswitch_2f
        :pswitch_13
    .end packed-switch
.end method

.method public static blacklist computeFieldSize(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I
    .registers 8
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 893
    .local p0, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 894
    .local v0, "type":Lcom/android/framework/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 895
    .local v1, "number":I
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 896
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 897
    const/4 v2, 0x0

    .line 898
    .local v2, "dataSize":I
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 899
    .local v4, "element":Ljava/lang/Object;
    invoke-static {v0, v4}, Lcom/android/framework/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    .line 900
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_1c

    .line 901
    :cond_2c
    nop

    .line 902
    invoke-static {v1}, Lcom/android/framework/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 903
    invoke-static {v2}, Lcom/android/framework/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 901
    return v3

    .line 905
    .end local v2    # "dataSize":I
    :cond_38
    const/4 v2, 0x0

    .line 906
    .local v2, "size":I
    move-object v3, p1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 907
    .restart local v4    # "element":Ljava/lang/Object;
    invoke-static {v0, v1, v4}, Lcom/android/framework/protobuf/FieldSet;->computeElementSize(Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v5

    add-int/2addr v2, v5

    .line 908
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_40

    .line 909
    :cond_50
    return v2

    .line 912
    .end local v2    # "size":I
    :cond_51
    invoke-static {v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->computeElementSize(Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public static blacklist emptySet()Lcom/android/framework/protobuf/FieldSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 106
    sget-object v0, Lcom/android/framework/protobuf/FieldSet;->DEFAULT_INSTANCE:Lcom/android/framework/protobuf/FieldSet;

    return-object v0
.end method

.method private blacklist getMessageSetSerializedSize(Ljava/util/Map$Entry;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 785
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 786
    .local v0, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 787
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_48

    .line 788
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_48

    .line 789
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v2

    if-nez v2, :cond_48

    .line 790
    instance-of v2, v1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v2, :cond_35

    .line 791
    nop

    .line 792
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/android/framework/protobuf/LazyField;

    .line 791
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeLazyFieldMessageSetExtensionSize(ILcom/android/framework/protobuf/LazyFieldLite;)I

    move-result v2

    return v2

    .line 794
    :cond_35
    nop

    .line 795
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/android/framework/protobuf/MessageLite;

    .line 794
    invoke-static {v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/android/framework/protobuf/MessageLite;)I

    move-result v2

    return v2

    .line 798
    :cond_48
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldSet;->computeFieldSize(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method static blacklist getWireFormatForFieldType(Lcom/android/framework/protobuf/WireFormat$FieldType;Z)I
    .registers 3
    .param p0, "type"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p1, "isPacked"    # Z

    .line 495
    if-eqz p1, :cond_4

    .line 496
    const/4 v0, 0x2

    return v0

    .line 498
    :cond_4
    invoke-virtual {p0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getWireType()I

    move-result v0

    return v0
.end method

.method private static blacklist isInitialized(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 461
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 462
    .local v0, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_3b

    .line 463
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 464
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 465
    .local v2, "element":Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/framework/protobuf/FieldSet;->isMessageFieldValueInitialized(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 466
    const/4 v1, 0x0

    return v1

    .line 468
    .end local v2    # "element":Ljava/lang/Object;
    :cond_30
    goto :goto_1e

    :cond_31
    goto :goto_3b

    .line 470
    :cond_32
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/android/framework/protobuf/FieldSet;->isMessageFieldValueInitialized(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 473
    :cond_3b
    :goto_3b
    const/4 v1, 0x1

    return v1
.end method

.method private static blacklist isMessageFieldValueInitialized(Ljava/lang/Object;)Z
    .registers 3
    .param p0, "value"    # Ljava/lang/Object;

    .line 477
    instance-of v0, p0, Lcom/android/framework/protobuf/MessageLiteOrBuilder;

    if-eqz v0, :cond_c

    .line 480
    move-object v0, p0

    check-cast v0, Lcom/android/framework/protobuf/MessageLiteOrBuilder;

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    move-result v0

    return v0

    .line 481
    :cond_c
    instance-of v0, p0, Lcom/android/framework/protobuf/LazyField;

    if-eqz v0, :cond_12

    .line 482
    const/4 v0, 0x1

    return v0

    .line 484
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist isValidType(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .registers 5
    .param p0, "type"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p1, "value"    # Ljava/lang/Object;

    .line 413
    invoke-static {p1}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$JavaType:[I

    invoke-virtual {p0}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/framework/protobuf/WireFormat$JavaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_48

    .line 434
    return v2

    .line 432
    :pswitch_15
    instance-of v0, p1, Lcom/android/framework/protobuf/MessageLite;

    if-nez v0, :cond_1f

    instance-of v0, p1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :cond_1f
    :goto_1f
    return v1

    .line 430
    :pswitch_20
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_2a

    instance-of v0, p1, Lcom/android/framework/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :cond_2a
    :goto_2a
    return v1

    .line 428
    :pswitch_2b
    instance-of v0, p1, Lcom/android/framework/protobuf/ByteString;

    if-nez v0, :cond_35

    instance-of v0, p1, [B

    if-eqz v0, :cond_34

    goto :goto_35

    :cond_34
    move v1, v2

    :cond_35
    :goto_35
    return v1

    .line 426
    :pswitch_36
    instance-of v0, p1, Ljava/lang/String;

    return v0

    .line 424
    :pswitch_39
    instance-of v0, p1, Ljava/lang/Boolean;

    return v0

    .line 422
    :pswitch_3c
    instance-of v0, p1, Ljava/lang/Double;

    return v0

    .line 420
    :pswitch_3f
    instance-of v0, p1, Ljava/lang/Float;

    return v0

    .line 418
    :pswitch_42
    instance-of v0, p1, Ljava/lang/Long;

    return v0

    .line 416
    :pswitch_45
    instance-of v0, p1, Ljava/lang/Integer;

    return v0

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_2b
        :pswitch_20
        :pswitch_15
    .end packed-switch
.end method

.method private blacklist mergeFromField(Ljava/util/Map$Entry;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 525
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 526
    .local v0, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 527
    .local v1, "otherValue":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v2, :cond_15

    .line 528
    move-object v2, v1

    check-cast v2, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    .line 531
    :cond_15
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 532
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v2

    .line 533
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_27

    .line 534
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 536
    :cond_27
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 537
    .local v4, "element":Ljava/lang/Object;
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    invoke-static {v4}, Lcom/android/framework/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_2e

    .line 539
    :cond_43
    iget-object v3, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0, v2}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_82

    :cond_49
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_79

    .line 541
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v2

    .line 542
    .restart local v2    # "value":Ljava/lang/Object;
    if-nez v2, :cond_61

    .line 543
    iget-object v3, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v1}, Lcom/android/framework/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 546
    :cond_61
    move-object v3, v2

    check-cast v3, Lcom/android/framework/protobuf/MessageLite;

    .line 548
    invoke-interface {v3}, Lcom/android/framework/protobuf/MessageLite;->toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/android/framework/protobuf/MessageLite;

    invoke-interface {v0, v3, v4}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->internalMergeFrom(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v3

    .line 549
    invoke-interface {v3}, Lcom/android/framework/protobuf/MessageLite$Builder;->build()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v2

    .line 550
    iget-object v3, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v3, v0, v2}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    .end local v2    # "value":Ljava/lang/Object;
    :goto_78
    goto :goto_82

    .line 553
    :cond_79
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v1}, Lcom/android/framework/protobuf/FieldSet;->cloneIfMutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :goto_82
    return-void
.end method

.method public static blacklist newBuilder()Lcom/android/framework/protobuf/FieldSet$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/android/framework/protobuf/FieldSet$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 111
    new-instance v0, Lcom/android/framework/protobuf/FieldSet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/FieldSet$Builder;-><init>(Lcom/android/framework/protobuf/FieldSet$1;)V

    return-object v0
.end method

.method public static blacklist newFieldSet()Lcom/android/framework/protobuf/FieldSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "TT;>;>()",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/android/framework/protobuf/FieldSet;

    invoke-direct {v0}, Lcom/android/framework/protobuf/FieldSet;-><init>()V

    return-object v0
.end method

.method public static blacklist readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .registers 4
    .param p0, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .param p1, "type"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p2, "checkUtf8"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 570
    if-eqz p2, :cond_9

    .line 571
    sget-object v0, Lcom/android/framework/protobuf/WireFormat$Utf8Validation;->STRICT:Lcom/android/framework/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/WireFormat;->readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Lcom/android/framework/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 573
    :cond_9
    sget-object v0, Lcom/android/framework/protobuf/WireFormat$Utf8Validation;->LOOSE:Lcom/android/framework/protobuf/WireFormat$Utf8Validation;

    invoke-static {p0, p1, v0}, Lcom/android/framework/protobuf/WireFormat;->readPrimitiveField(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Lcom/android/framework/protobuf/WireFormat$Utf8Validation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 7
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 400
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/framework/protobuf/FieldSet;->isValidType(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 409
    return-void

    .line 401
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 405
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 406
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/framework/protobuf/WireFormat$FieldType;->getJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v2

    .line 407
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 402
    const-string v2, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist writeElement(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .registers 5
    .param p0, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .param p1, "type"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p2, "number"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 632
    sget-object v0, Lcom/android/framework/protobuf/WireFormat$FieldType;->GROUP:Lcom/android/framework/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_b

    .line 633
    move-object v0, p3

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {p0, p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeGroup(ILcom/android/framework/protobuf/MessageLite;)V

    goto :goto_16

    .line 635
    :cond_b
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/FieldSet;->getWireFormatForFieldType(Lcom/android/framework/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 636
    invoke-static {p0, p1, p3}, Lcom/android/framework/protobuf/FieldSet;->writeElementNoTag(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 638
    :goto_16
    return-void
.end method

.method static blacklist writeElementNoTag(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .registers 5
    .param p0, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .param p1, "type"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    sget-object v0, Lcom/android/framework/protobuf/FieldSet$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_f4

    goto/16 :goto_f2

    .line 713
    :pswitch_d
    instance-of v0, p2, Lcom/android/framework/protobuf/Internal$EnumLite;

    if-eqz v0, :cond_1d

    .line 714
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/Internal$EnumLite;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_f2

    .line 716
    :cond_1d
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeEnumNoTag(I)V

    goto/16 :goto_f2

    .line 709
    :pswitch_29
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt64NoTag(J)V

    .line 710
    goto/16 :goto_f2

    .line 706
    :pswitch_35
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSInt32NoTag(I)V

    .line 707
    goto/16 :goto_f2

    .line 703
    :pswitch_41
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed64NoTag(J)V

    .line 704
    goto/16 :goto_f2

    .line 700
    :pswitch_4d
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeSFixed32NoTag(I)V

    .line 701
    goto/16 :goto_f2

    .line 697
    :pswitch_59
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 698
    goto/16 :goto_f2

    .line 690
    :pswitch_65
    instance-of v0, p2, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_71

    .line 691
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_f2

    .line 693
    :cond_71
    move-object v0, p2

    check-cast v0, [B

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeByteArrayNoTag([B)V

    .line 695
    goto/16 :goto_f2

    .line 683
    :pswitch_79
    instance-of v0, p2, Lcom/android/framework/protobuf/ByteString;

    if-eqz v0, :cond_85

    .line 684
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/android/framework/protobuf/ByteString;)V

    goto/16 :goto_f2

    .line 686
    :cond_85
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeStringNoTag(Ljava/lang/String;)V

    .line 688
    goto :goto_f2

    .line 680
    :pswitch_8c
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeMessageNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    .line 681
    goto :goto_f2

    .line 677
    :pswitch_93
    move-object v0, p2

    check-cast v0, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeGroupNoTag(Lcom/android/framework/protobuf/MessageLite;)V

    .line 678
    goto :goto_f2

    .line 674
    :pswitch_9a
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeBoolNoTag(Z)V

    .line 675
    goto :goto_f2

    .line 671
    :pswitch_a5
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    .line 672
    goto :goto_f2

    .line 668
    :pswitch_b0
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    .line 669
    goto :goto_f2

    .line 665
    :pswitch_bb
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt32NoTag(I)V

    .line 666
    goto :goto_f2

    .line 662
    :pswitch_c6
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    .line 663
    goto :goto_f2

    .line 659
    :pswitch_d1
    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeInt64NoTag(J)V

    .line 660
    goto :goto_f2

    .line 656
    :pswitch_dc
    move-object v0, p2

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/CodedOutputStream;->writeFloatNoTag(F)V

    .line 657
    goto :goto_f2

    .line 653
    :pswitch_e7
    move-object v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/CodedOutputStream;->writeDoubleNoTag(D)V

    .line 654
    nop

    .line 720
    :goto_f2
    return-void

    nop

    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_e7
        :pswitch_dc
        :pswitch_d1
        :pswitch_c6
        :pswitch_bb
        :pswitch_b0
        :pswitch_a5
        :pswitch_9a
        :pswitch_93
        :pswitch_8c
        :pswitch_79
        :pswitch_65
        :pswitch_59
        :pswitch_4d
        :pswitch_41
        :pswitch_35
        :pswitch_29
        :pswitch_d
    .end packed-switch
.end method

.method public static blacklist writeField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    .local p0, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<*>;"
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 727
    .local v0, "type":Lcom/android/framework/protobuf/WireFormat$FieldType;
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v1

    .line 728
    .local v1, "number":I
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 729
    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 730
    .local v2, "valueList":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v3

    if-eqz v3, :cond_46

    .line 731
    const/4 v3, 0x2

    invoke-virtual {p2, v1, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeTag(II)V

    .line 733
    const/4 v3, 0x0

    .line 734
    .local v3, "dataSize":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 735
    .local v5, "element":Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/android/framework/protobuf/FieldSet;->computeElementSizeNoTag(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v3, v6

    .line 736
    .end local v5    # "element":Ljava/lang/Object;
    goto :goto_20

    .line 737
    :cond_30
    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 739
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_37
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 740
    .restart local v5    # "element":Ljava/lang/Object;
    invoke-static {p2, v0, v5}, Lcom/android/framework/protobuf/FieldSet;->writeElementNoTag(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 741
    .end local v5    # "element":Ljava/lang/Object;
    goto :goto_37

    .line 742
    .end local v3    # "dataSize":I
    :cond_45
    goto :goto_58

    .line 743
    :cond_46
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 744
    .local v4, "element":Ljava/lang/Object;
    invoke-static {p2, v0, v1, v4}, Lcom/android/framework/protobuf/FieldSet;->writeElement(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 745
    .end local v4    # "element":Ljava/lang/Object;
    goto :goto_4a

    .line 747
    .end local v2    # "valueList":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_58
    :goto_58
    goto :goto_6b

    .line 748
    :cond_59
    instance-of v2, p1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v2, :cond_68

    .line 749
    move-object v2, p1

    check-cast v2, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/android/framework/protobuf/FieldSet;->writeElement(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_6b

    .line 751
    :cond_68
    invoke-static {p2, v0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->writeElement(Lcom/android/framework/protobuf/CodedOutputStream;Lcom/android/framework/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    .line 754
    :goto_6b
    return-void
.end method

.method private blacklist writeMessageSetTo(Ljava/util/Map$Entry;Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 7
    .param p2, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/framework/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    .line 602
    .local v0, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/android/framework/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/android/framework/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_3a

    .line 603
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 604
    invoke-interface {v0}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isPacked()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 605
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 606
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/framework/protobuf/LazyField;

    if-eqz v2, :cond_29

    .line 607
    move-object v2, v1

    check-cast v2, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    .line 609
    :cond_29
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->getNumber()I

    move-result v2

    move-object v3, v1

    check-cast v3, Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {p2, v2, v3}, Lcom/android/framework/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/android/framework/protobuf/MessageLite;)V

    .line 610
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_41

    .line 611
    :cond_3a
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/framework/protobuf/FieldSet;->writeField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 613
    :goto_41
    return-void
.end method


# virtual methods
.method public blacklist addRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 6
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 373
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/FieldSet;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 382
    .local v0, "existingValue":Ljava/lang/Object;
    if-nez v0, :cond_1a

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2, p1, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 386
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1a
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 389
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_1d
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    return-void

    .line 374
    .end local v0    # "existingValue":Ljava/lang/Object;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist clear()V
    .registers 2

    .line 193
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->clear()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    .line 195
    return-void
.end method

.method public blacklist clearField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 310
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    .line 314
    :cond_10
    return-void
.end method

.method public blacklist clone()Lcom/android/framework/protobuf/FieldSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    invoke-static {}, Lcom/android/framework/protobuf/FieldSet;->newFieldSet()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    .line 177
    .local v0, "clone":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 178
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 179
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 177
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 181
    .end local v1    # "i":I
    :cond_23
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 182
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/FieldSet;->setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 183
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_2d

    .line 184
    :cond_47
    iget-boolean v1, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    iput-boolean v1, v0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    .line 185
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 52
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    invoke-virtual {p0}, Lcom/android/framework/protobuf/FieldSet;->clone()Lcom/android/framework/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method blacklist descendingIterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_14

    .line 252
    new-instance v0, Lcom/android/framework/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 254
    :cond_14
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->descendingEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 149
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    if-ne p0, p1, :cond_4

    .line 150
    const/4 v0, 0x1

    return v0

    .line 153
    :cond_4
    instance-of v0, p1, Lcom/android/framework/protobuf/FieldSet;

    if-nez v0, :cond_a

    .line 154
    const/4 v0, 0x0

    return v0

    .line 157
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/FieldSet;

    .line 158
    .local v0, "other":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<*>;"
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    iget-object v2, v0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/SmallSortedMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getAllFields()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 199
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_17

    .line 200
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldSet;->cloneAllFieldsMap(Lcom/android/framework/protobuf/SmallSortedMap;Z)Lcom/android/framework/protobuf/SmallSortedMap;

    move-result-object v0

    .line 201
    .local v0, "result":Lcom/android/framework/protobuf/SmallSortedMap;, "Lcom/android/framework/protobuf/SmallSortedMap<TT;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 202
    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->makeImmutable()V

    .line 204
    :cond_16
    return-object v0

    .line 206
    .end local v0    # "result":Lcom/android/framework/protobuf/SmallSortedMap;, "Lcom/android/framework/protobuf/SmallSortedMap<TT;Ljava/lang/Object;>;"
    :cond_17
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    goto :goto_28

    :cond_22
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_28
    return-object v0
.end method

.method public blacklist getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 272
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "o":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/framework/protobuf/LazyField;

    if-eqz v1, :cond_12

    .line 274
    move-object v1, v0

    check-cast v1, Lcom/android/framework/protobuf/LazyField;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v1

    return-object v1

    .line 276
    :cond_12
    return-object v0
.end method

.method public blacklist getMessageSetSerializedSize()I
    .registers 5

    .line 774
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    .line 775
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_18

    .line 776
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v0, v2

    .line 775
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 778
    .end local v1    # "i":I
    :cond_18
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 779
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/FieldSet;->getMessageSetSerializedSize(Ljava/util/Map$Entry;)I

    move-result v3

    add-int/2addr v0, v3

    .line 780
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_22

    .line 781
    :cond_34
    return v0
.end method

.method public blacklist getRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;I)Ljava/lang/Object;
    .registers 5
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 340
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 343
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 341
    :cond_14
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 334
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getRepeatedFieldCount(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 318
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_e

    .line 325
    const/4 v1, 0x0

    return v1

    .line 327
    :cond_e
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    return v1

    .line 319
    .end local v0    # "value":Ljava/lang/Object;
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getSerializedSize()I
    .registers 6

    .line 761
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    .line 762
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 763
    iget-object v2, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 764
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/FieldSet;->computeFieldSize(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 762
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 766
    .end local v1    # "i":I
    :cond_22
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 767
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/framework/protobuf/FieldSet;->computeFieldSize(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 768
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_2c

    .line 769
    :cond_48
    return v0
.end method

.method public blacklist hasField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 259
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_12

    .line 263
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 260
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "hasField() can only be called on non-repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 163
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method blacklist isEmpty()Z
    .registers 2

    .line 119
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public blacklist isImmutable()Z
    .registers 2

    .line 144
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->isImmutable:Z

    return v0
.end method

.method public blacklist isInitialized()Z
    .registers 5

    .line 446
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1a

    .line 447
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-static {v1}, Lcom/android/framework/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 448
    return v2

    .line 446
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 451
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 452
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-static {v1}, Lcom/android/framework/protobuf/FieldSet;->isInitialized(Ljava/util/Map$Entry;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 453
    return v2

    .line 455
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    :cond_37
    goto :goto_24

    .line 456
    :cond_38
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    if-eqz v0, :cond_14

    .line 240
    new-instance v0, Lcom/android/framework/protobuf/LazyField$LazyIterator;

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 242
    :cond_14
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeImmutable()V
    .registers 4

    .line 124
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->isImmutable:Z

    if-eqz v0, :cond_5

    .line 125
    return-void

    .line 127
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 128
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 129
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/framework/protobuf/GeneratedMessageLite;

    if-eqz v2, :cond_25

    .line 130
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/GeneratedMessageLite;->makeImmutable()V

    .line 127
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 133
    .end local v0    # "i":I
    :cond_28
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->makeImmutable()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->isImmutable:Z

    .line 135
    return-void
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/FieldSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 504
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "other":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p1, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 505
    iget-object v1, p1, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 507
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p1, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 508
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/FieldSet;->mergeFromField(Ljava/util/Map$Entry;)V

    .line 509
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_1f

    .line 510
    :cond_2f
    return-void
.end method

.method public blacklist setField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V
    .registers 6
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 284
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 285
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_29

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, "newList":Ljava/util/List;
    move-object v1, p2

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 295
    .local v2, "element":Ljava/lang/Object;
    invoke-direct {p0, p1, v2}, Lcom/android/framework/protobuf/FieldSet;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 296
    .end local v2    # "element":Ljava/lang/Object;
    goto :goto_19

    .line 297
    :cond_27
    move-object p2, v0

    .line 298
    .end local v0    # "newList":Ljava/util/List;
    goto :goto_34

    .line 286
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_31
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/FieldSet;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 302
    :goto_34
    instance-of v0, p2, Lcom/android/framework/protobuf/LazyField;

    if-eqz v0, :cond_3b

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/framework/protobuf/FieldSet;->hasLazyField:Z

    .line 305
    :cond_3b
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/framework/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public blacklist setRepeatedField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V
    .registers 6
    .param p2, "index"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 353
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    .local p1, "descriptor":Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;, "TT;"
    invoke-interface {p1}, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/FieldSet;->getField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object v0

    .line 359
    .local v0, "list":Ljava/lang/Object;
    if-eqz v0, :cond_16

    .line 363
    invoke-direct {p0, p1, p3}, Lcom/android/framework/protobuf/FieldSet;->verifyType(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 364
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p2, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 365
    return-void

    .line 360
    :cond_16
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 354
    .end local v0    # "list":Ljava/lang/Object;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist writeMessageSetTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 4
    .param p1, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 591
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 592
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 591
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 594
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 595
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-direct {p0, v1, p1}, Lcom/android/framework/protobuf/FieldSet;->writeMessageSetTo(Ljava/util/Map$Entry;Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 596
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_1f

    .line 597
    :cond_2f
    return-void
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .registers 6
    .param p1, "output"    # Lcom/android/framework/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 580
    .local p0, "this":Lcom/android/framework/protobuf/FieldSet;, "Lcom/android/framework/protobuf/FieldSet<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/SmallSortedMap;->getNumArrayEntries()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 581
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getArrayEntryAt(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 582
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/framework/protobuf/FieldSet;->writeField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 580
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 584
    .end local v0    # "i":I
    :cond_1f
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldSet;->fields:Lcom/android/framework/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/SmallSortedMap;->getOverflowEntries()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 585
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/framework/protobuf/FieldSet;->writeField(Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/android/framework/protobuf/CodedOutputStream;)V

    .line 586
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/lang/Object;>;"
    goto :goto_29

    .line 587
    :cond_43
    return-void
.end method
