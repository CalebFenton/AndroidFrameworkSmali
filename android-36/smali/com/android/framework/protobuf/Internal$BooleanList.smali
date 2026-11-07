.class public interface abstract Lcom/android/framework/protobuf/Internal$BooleanList;
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
    name = "BooleanList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/framework/protobuf/Internal$ProtobufList<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract blacklist addBoolean(Z)V
.end method

.method public abstract blacklist getBoolean(I)Z
.end method

.method public abstract blacklist mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$BooleanList;
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

    .line 614
    invoke-interface {p0, p1}, Lcom/android/framework/protobuf/Internal$BooleanList;->mutableCopyWithCapacity(I)Lcom/android/framework/protobuf/Internal$BooleanList;

    move-result-object p1

    return-object p1
.end method

.method public abstract blacklist setBoolean(IZ)Z
.end method
