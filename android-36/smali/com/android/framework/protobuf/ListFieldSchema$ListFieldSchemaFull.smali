.class final Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;
.super Lcom/android/framework/protobuf/ListFieldSchema;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListFieldSchemaFull"
.end annotation


# static fields
.field private static final blacklist UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    .line 66
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/ListFieldSchema;-><init>(Lcom/android/framework/protobuf/ListFieldSchema$1;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/ListFieldSchema$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/framework/protobuf/ListFieldSchema$1;

    .line 64
    invoke-direct {p0}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;-><init>()V

    return-void
.end method

.method static blacklist getList(Ljava/lang/Object;J)Ljava/util/List;
    .registers 4
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 142
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static blacklist mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;
    .registers 7
    .param p0, "message"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "additionalCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "JI)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->getList(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 98
    instance-of v1, v0, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v1, :cond_15

    .line 99
    new-instance v1, Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-direct {v1, p3}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(I)V

    move-object v0, v1

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    goto :goto_2b

    .line 100
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<TL;>;"
    :cond_15
    instance-of v1, v0, Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v1, :cond_25

    instance-of v1, v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    if-eqz v1, :cond_25

    .line 101
    move-object v1, v0

    check-cast v1, Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p3}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    goto :goto_2b

    .line 103
    :cond_25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 105
    :goto_2b
    invoke-static {p0, p1, p2, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_86

    .line 106
    :cond_2f
    sget-object v1, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v1, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TL;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    move-object v0, v1

    .line 110
    invoke-static {p0, p1, p2, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 111
    .end local v1    # "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TL;>;"
    goto :goto_86

    :cond_4d
    instance-of v1, v0, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;

    if-eqz v1, :cond_66

    .line 112
    new-instance v1, Lcom/android/framework/protobuf/LazyStringArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-direct {v1, v2}, Lcom/android/framework/protobuf/LazyStringArrayList;-><init>(I)V

    .line 113
    .local v1, "newList":Lcom/android/framework/protobuf/LazyStringArrayList;
    move-object v2, v0

    check-cast v2, Lcom/android/framework/protobuf/UnmodifiableLazyStringList;

    invoke-virtual {v1, v2}, Lcom/android/framework/protobuf/LazyStringArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    move-object v0, v1

    .line 115
    invoke-static {p0, p1, p2, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 116
    .end local v1    # "newList":Lcom/android/framework/protobuf/LazyStringArrayList;
    :cond_65
    goto :goto_86

    :cond_66
    instance-of v1, v0, Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v1, :cond_65

    instance-of v1, v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    if-eqz v1, :cond_65

    move-object v1, v0

    check-cast v1, Lcom/android/framework/protobuf/Internal$ProtobufList;

    .line 118
    invoke-interface {v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_86

    .line 119
    move-object v1, v0

    check-cast v1, Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v1, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 120
    invoke-static {p0, p1, p2, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 122
    :cond_86
    :goto_86
    return-object v0
.end method


# virtual methods
.method blacklist makeImmutableListAt(Ljava/lang/Object;J)V
    .registers 8
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 76
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 77
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    const/4 v1, 0x0

    .line 78
    .local v1, "immutable":Ljava/lang/Object;
    instance-of v2, v0, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v2, :cond_13

    .line 79
    move-object v2, v0

    check-cast v2, Lcom/android/framework/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/android/framework/protobuf/LazyStringList;->getUnmodifiableView()Lcom/android/framework/protobuf/LazyStringList;

    move-result-object v1

    goto :goto_3c

    .line 80
    :cond_13
    sget-object v2, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->UNMODIFIABLE_LIST_CLASS:Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 82
    return-void

    .line 83
    :cond_20
    instance-of v2, v0, Lcom/android/framework/protobuf/PrimitiveNonBoxingCollection;

    if-eqz v2, :cond_38

    instance-of v2, v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    if-eqz v2, :cond_38

    .line 84
    move-object v2, v0

    check-cast v2, Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 85
    move-object v2, v0

    check-cast v2, Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 87
    :cond_37
    return-void

    .line 89
    :cond_38
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 91
    :goto_3c
    invoke-static {p1, p2, p3, v1}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 92
    return-void
.end method

.method blacklist mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .registers 10
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "otherMsg"    # Ljava/lang/Object;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 127
    invoke-static {p2, p3, p4}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->getList(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "other":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, p3, p4, v1}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v1

    .line 130
    .local v1, "mine":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 131
    .local v2, "size":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 132
    .local v3, "otherSize":I
    if-lez v2, :cond_1b

    if-lez v3, :cond_1b

    .line 133
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    :cond_1b
    if-lez v2, :cond_1f

    move-object v4, v1

    goto :goto_20

    :cond_1f
    move-object v4, v0

    .line 137
    .local v4, "merged":Ljava/util/List;, "Ljava/util/List<TE;>;"
    :goto_20
    invoke-static {p1, p3, p4, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 138
    return-void
.end method

.method blacklist mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 71
    const/16 v0, 0xa

    invoke-static {p1, p2, p3, v0}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaFull;->mutableListAt(Ljava/lang/Object;JI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
