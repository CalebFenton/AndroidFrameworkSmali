.class public interface abstract Landroid/net/connectivity/com/google/protobuf/LazyStringList;
.super Ljava/lang/Object;
.source "LazyStringList.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/ProtocolStringList;


# virtual methods
.method public abstract blacklist add(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
.end method

.method public abstract blacklist add([B)V
.end method

.method public abstract blacklist addAllByteArray(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation
.end method

.method public abstract blacklist addAllByteString(Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract blacklist asByteArrayList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract blacklist getByteArray(I)[B
.end method

.method public abstract blacklist getByteString(I)Landroid/net/connectivity/com/google/protobuf/ByteString;
.end method

.method public abstract blacklist getRaw(I)Ljava/lang/Object;
.end method

.method public abstract blacklist getUnderlyingElements()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract blacklist getUnmodifiableView()Landroid/net/connectivity/com/google/protobuf/LazyStringList;
.end method

.method public abstract blacklist mergeFrom(Landroid/net/connectivity/com/google/protobuf/LazyStringList;)V
.end method

.method public abstract blacklist set(ILandroid/net/connectivity/com/google/protobuf/ByteString;)V
.end method

.method public abstract blacklist set(I[B)V
.end method
