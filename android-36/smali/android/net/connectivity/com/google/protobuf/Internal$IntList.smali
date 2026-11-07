.class public interface abstract Landroid/net/connectivity/com/google/protobuf/Internal$IntList;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IntList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract blacklist addInt(I)V
.end method

.method public abstract blacklist getInt(I)I
.end method

.method public abstract blacklist mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$IntList;
.end method

.method public bridge synthetic blacklist mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 594
    invoke-interface {p0, p1}, Landroid/net/connectivity/com/google/protobuf/Internal$IntList;->mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$IntList;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist setInt(II)I
.end method
