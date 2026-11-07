.class final Lcom/android/framework/protobuf/ProtobufLists;
.super Ljava/lang/Object;
.source "ProtobufLists.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist emptyBooleanList()Lcom/android/framework/protobuf/Internal$BooleanList;
    .registers 1

    .line 57
    invoke-static {}, Lcom/android/framework/protobuf/BooleanArrayList;->emptyList()Lcom/android/framework/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyDoubleList()Lcom/android/framework/protobuf/Internal$DoubleList;
    .registers 1

    .line 89
    invoke-static {}, Lcom/android/framework/protobuf/DoubleArrayList;->emptyList()Lcom/android/framework/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyFloatList()Lcom/android/framework/protobuf/Internal$FloatList;
    .registers 1

    .line 81
    invoke-static {}, Lcom/android/framework/protobuf/FloatArrayList;->emptyList()Lcom/android/framework/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyIntList()Lcom/android/framework/protobuf/Internal$IntList;
    .registers 1

    .line 65
    invoke-static {}, Lcom/android/framework/protobuf/IntArrayList;->emptyList()Lcom/android/framework/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyLongList()Lcom/android/framework/protobuf/Internal$LongList;
    .registers 1

    .line 73
    invoke-static {}, Lcom/android/framework/protobuf/LongArrayList;->emptyList()Lcom/android/framework/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 47
    invoke-static {}, Lcom/android/framework/protobuf/ProtobufArrayList;->emptyList()Lcom/android/framework/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 51
    .local p0, "list":Lcom/android/framework/protobuf/Internal$ProtobufList;, "Lcom/android/framework/protobuf/Internal$ProtobufList<TE;>;"
    invoke-interface {p0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    .line 52
    .local v0, "size":I
    nop

    .line 53
    if-nez v0, :cond_a

    const/16 v1, 0xa

    goto :goto_c

    :cond_a
    mul-int/lit8 v1, v0, 0x2

    .line 52
    :goto_c
    invoke-interface {p0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist newBooleanList()Lcom/android/framework/protobuf/Internal$BooleanList;
    .registers 1

    .line 61
    new-instance v0, Lcom/android/framework/protobuf/BooleanArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/BooleanArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newDoubleList()Lcom/android/framework/protobuf/Internal$DoubleList;
    .registers 1

    .line 93
    new-instance v0, Lcom/android/framework/protobuf/DoubleArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/DoubleArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newFloatList()Lcom/android/framework/protobuf/Internal$FloatList;
    .registers 1

    .line 85
    new-instance v0, Lcom/android/framework/protobuf/FloatArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/FloatArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newIntList()Lcom/android/framework/protobuf/Internal$IntList;
    .registers 1

    .line 69
    new-instance v0, Lcom/android/framework/protobuf/IntArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/IntArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newLongList()Lcom/android/framework/protobuf/Internal$LongList;
    .registers 1

    .line 77
    new-instance v0, Lcom/android/framework/protobuf/LongArrayList;

    invoke-direct {v0}, Lcom/android/framework/protobuf/LongArrayList;-><init>()V

    return-object v0
.end method
