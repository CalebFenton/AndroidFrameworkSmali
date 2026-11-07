.class public interface abstract Landroid/net/connectivity/com/google/protobuf/Internal$LongList;
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
    name = "LongList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/com/google/protobuf/Internal$ProtobufList<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract blacklist addLong(J)V
.end method

.method public abstract blacklist getLong(I)J
.end method

.method public abstract blacklist mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$LongList;
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

    .line 634
    invoke-interface {p0, p1}, Landroid/net/connectivity/com/google/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Landroid/net/connectivity/com/google/protobuf/Internal$LongList;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist setLong(IJ)J
.end method
