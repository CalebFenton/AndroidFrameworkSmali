.class public interface abstract Lcom/android/framework/protobuf/LazyStringList;
.super Ljava/lang/Object;
.source "LazyStringList.java"

# interfaces
.implements Lcom/android/framework/protobuf/ProtocolStringList;


# virtual methods
.method public abstract blacklist add(Lcom/android/framework/protobuf/ByteString;)V
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
            "Lcom/android/framework/protobuf/ByteString;",
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

.method public abstract blacklist getByteString(I)Lcom/android/framework/protobuf/ByteString;
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

.method public abstract blacklist getUnmodifiableView()Lcom/android/framework/protobuf/LazyStringList;
.end method

.method public abstract blacklist mergeFrom(Lcom/android/framework/protobuf/LazyStringList;)V
.end method

.method public abstract blacklist set(ILcom/android/framework/protobuf/ByteString;)V
.end method

.method public abstract blacklist set(I[B)V
.end method
