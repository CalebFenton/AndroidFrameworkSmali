.class public interface abstract Landroid/net/connectivity/com/google/protobuf/Internal$DoubleList;
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
    name = "DoubleList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract blacklist addDouble(D)V
.end method

.method public abstract blacklist getDouble(I)D
.end method

.method public abstract blacklist mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$DoubleList;
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

    .line 654
    invoke-interface {p0, p1}, Landroid/net/connectivity/com/google/protobuf/Internal$DoubleList;->mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$DoubleList;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist setDouble(ID)D
.end method
