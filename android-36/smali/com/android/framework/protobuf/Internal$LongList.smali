.class public interface abstract Lcom/android/framework/protobuf/Internal$LongList;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Lcom/android/framework/protobuf/Internal$ProtobufList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LongList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/framework/protobuf/Internal$ProtobufList<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract blacklist addLong(J)V
.end method

.method public abstract blacklist getLong(I)J
.end method

.method public abstract blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$LongList;
.end method

.method public bridge synthetic blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$ProtobufList;
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
    invoke-interface {p0, p1}, Lcom/android/framework/protobuf/Internal$LongList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$LongList;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist setLong(IJ)J
.end method
