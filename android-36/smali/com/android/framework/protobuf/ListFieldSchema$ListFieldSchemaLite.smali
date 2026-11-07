.class final Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;
.super Lcom/android/framework/protobuf/ListFieldSchema;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ListFieldSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListFieldSchemaLite"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/ListFieldSchema;-><init>(Lcom/android/framework/protobuf/ListFieldSchema$1;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/ListFieldSchema$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/framework/protobuf/ListFieldSchema$1;

    .line 147
    invoke-direct {p0}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;-><init>()V

    return-void
.end method

.method static blacklist getProtobufList(Ljava/lang/Object;J)Lcom/android/framework/protobuf/Internal$ProtobufList;
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
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 188
    invoke-static {p0, p1, p2}, Lcom/android/framework/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method


# virtual methods
.method blacklist makeImmutableListAt(Ljava/lang/Object;J)V
    .registers 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .line 164
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 165
    .local v0, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<*>;"
    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 166
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

    .line 170
    invoke-static {p1, p3, p4}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 171
    .local v0, "mine":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<TE;>;"
    invoke-static {p2, p3, p4}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v1

    .line 173
    .local v1, "other":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<TE;>;"
    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    .line 174
    .local v2, "size":I
    invoke-interface {v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    .line 175
    .local v3, "otherSize":I
    if-lez v2, :cond_23

    if-lez v3, :cond_23

    .line 176
    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_20

    .line 177
    add-int v4, v2, v3

    invoke-interface {v0, v4}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 179
    :cond_20
    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->addAll(Ljava/util/Collection;)Z

    .line 182
    :cond_23
    if-lez v2, :cond_27

    move-object v4, v0

    goto :goto_28

    :cond_27
    move-object v4, v1

    .line 183
    .local v4, "merged":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<TE;>;"
    :goto_28
    invoke-static {p1, p3, p4, v4}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 184
    return-void
.end method

.method blacklist mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .registers 7
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

    .line 151
    invoke-static {p1, p2, p3}, Lcom/android/framework/protobuf/ListFieldSchema$ListFieldSchemaLite;->getProtobufList(Ljava/lang/Object;J)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 152
    .local v0, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<TL;>;"
    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 153
    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    .line 154
    .local v1, "size":I
    nop

    .line 156
    if-nez v1, :cond_14

    const/16 v2, 0xa

    goto :goto_16

    :cond_14
    mul-int/lit8 v2, v1, 0x2

    .line 155
    :goto_16
    invoke-interface {v0, v2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    .line 157
    invoke-static {p1, p2, p3, v0}, Lcom/android/framework/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 159
    .end local v1    # "size":I
    :cond_1d
    return-object v0
.end method
