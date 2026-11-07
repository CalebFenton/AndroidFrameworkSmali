.class public Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;
.super Ljava/util/AbstractList;
.source "UnmodifiableLazyStringList.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/LazyStringList;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Landroid/net/connectivity/com/google/protobuf/LazyStringList;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field private final blacklist list:Landroid/net/connectivity/com/google/protobuf/LazyStringList;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/LazyStringList;)V
    .registers 2
    .param p1, "list"    # Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    .line 52
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    .line 54
    return-void
.end method

.method static synthetic blacklist access$000(Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;)Landroid/net/connectivity/com/google/protobuf/LazyStringList;
    .registers 2
    .param p0, "x0"    # Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;

    .line 47
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    return-object v0
.end method


# virtual methods
.method public blacklist add(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 3
    .param p1, "element"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 78
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist add([B)V
    .registers 3
    .param p1, "element"    # [B

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist addAllByteArray(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation

    .line 108
    .local p1, "element":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist addAllByteString(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation

    .line 88
    .local p1, "element":Ljava/util/Collection;, "Ljava/util/Collection<+Landroid/net/connectivity/com/google/protobuf/ByteString;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist asByteArrayList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->asByteArrayList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist asByteStringList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->asByteStringList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;->get(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public blacklist get(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I

    .line 58
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getByteArray(I)[B
    .registers 3
    .param p1, "index"    # I

    .line 93
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->getByteArray(I)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getByteString(I)Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 3
    .param p1, "index"    # I

    .line 73
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->getByteString(I)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getRaw(I)Ljava/lang/Object;
    .registers 3
    .param p1, "index"    # I

    .line 63
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnderlyingElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->getUnderlyingElements()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnmodifiableView()Landroid/net/connectivity/com/google/protobuf/LazyStringList;
    .registers 1

    .line 208
    return-object p0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList$2;

    invoke-direct {v0, p0}, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList$2;-><init>(Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;)V

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList$1;

    invoke-direct {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList$1;-><init>(Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;I)V

    return-object v0
.end method

.method public blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/LazyStringList;)V
    .registers 3
    .param p1, "other"    # Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist set(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist set(I[B)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "element"    # [B

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/UnmodifiableLazyStringList;->list:Landroid/net/connectivity/com/google/protobuf/LazyStringList;

    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method
