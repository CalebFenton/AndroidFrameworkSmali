.class final Landroid/net/connectivity/com/google/protobuf/ProtobufLists;
.super Ljava/lang/Object;
.source "ProtobufLists.java"


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist emptyBooleanList()Landroid/net/connectivity/com/google/protobuf/Internal$BooleanList;
    .registers 1

    .line 57
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/BooleanArrayList;->emptyList()Landroid/net/connectivity/com/google/protobuf/BooleanArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyDoubleList()Landroid/net/connectivity/com/google/protobuf/Internal$DoubleList;
    .registers 1

    .line 89
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/DoubleArrayList;->emptyList()Landroid/net/connectivity/com/google/protobuf/DoubleArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyFloatList()Landroid/net/connectivity/com/google/protobuf/Internal$FloatList;
    .registers 1

    .line 81
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/FloatArrayList;->emptyList()Landroid/net/connectivity/com/google/protobuf/FloatArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyIntList()Landroid/net/connectivity/com/google/protobuf/Internal$IntList;
    .registers 1

    .line 65
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;->emptyList()Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyLongList()Landroid/net/connectivity/com/google/protobuf/Internal$LongList;
    .registers 1

    .line 73
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;->emptyList()Landroid/net/connectivity/com/google/protobuf/LongArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist emptyProtobufList()Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 47
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ProtobufArrayList;->emptyList()Landroid/net/connectivity/com/google/protobuf/ProtobufArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist mutableCopy(Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;)Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<",
            "TE;>;)",
            "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<",
            "TE;>;"
        }
    .end annotation

    .line 51
    .local p0, "list":Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;, "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<TE;>;"
    invoke-interface {p0}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->size()I

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
    invoke-interface {p0, v1}, Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;->mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist newBooleanList()Landroid/net/connectivity/com/google/protobuf/Internal$BooleanList;
    .registers 1

    .line 61
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/BooleanArrayList;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/BooleanArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newDoubleList()Landroid/net/connectivity/com/google/protobuf/Internal$DoubleList;
    .registers 1

    .line 93
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/DoubleArrayList;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/DoubleArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newFloatList()Landroid/net/connectivity/com/google/protobuf/Internal$FloatList;
    .registers 1

    .line 85
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/FloatArrayList;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/FloatArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newIntList()Landroid/net/connectivity/com/google/protobuf/Internal$IntList;
    .registers 1

    .line 69
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/IntArrayList;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/IntArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newLongList()Landroid/net/connectivity/com/google/protobuf/Internal$LongList;
    .registers 1

    .line 77
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/LongArrayList;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/LongArrayList;-><init>()V

    return-object v0
.end method
